using System;
using J_Dimension.App_Code;
using J_Dimension.Models;
using System.Threading;
using System.Collections.Generic;
using System.Linq;

namespace J_Dimension
{
    public partial class Battlefield : System.Web.UI.Page
    {
        public MechGameEntities entities = new MechGameEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }       

        protected void OnClickBattle(object sender, EventArgs e)
        {
            Random rnd = new Random();
            int counter = 1;
            int compLanceGroupRow = 0;         
            int userLanceGroupRow = Convert.ToInt32(ddlLanceList.SelectedValue);
            
            int numberOfRows = new LinqDataAccess().countMechGroupRows();        //Determine the number of rows in the MechGroup table.          
            int randomizeCompLanceGroupRow = rnd.Next(1, numberOfRows);          //Choose a random row from the MechGroup table.                      
            foreach (MechGroup mechgroup in entities.MechGroups)                 //Find the Id of the random row in the MechGroup table.
            {
                if (counter == randomizeCompLanceGroupRow)
                {
                    compLanceGroupRow = mechgroup.Id;
                    break;
                }
                counter++;
            }       
            
            Lance userLance = new Lance(userLanceGroupRow);                //Retrieve the user's chosen lance and apply its attack/defense modifier.
            Lance compLance = new Lance(compLanceGroupRow);                //Retrieve the computer's random lance and apply its attack/defense modifier.             

            BattleResult(userLance, compLance, rnd);            
        }
        
        //Calculate the final results including the margin of defeat and display them based on the victor.
        public void BattleResult(Lance user, Lance comp, Random rnd)
        {           
            BattleSequence(user, comp, rnd);

            int userMechsRemaining = 0;
            int compMechsRemaining = 0;

            for (int i = 0; i < 4; i++)     //Find how many mechs are remaining for each lance.
            {                
                if (user.Mechs[i].MechDefense > 0)
                {
                    userMechsRemaining += 1;
                }
                if (comp.Mechs[i].MechDefense > 0)
                {
                    compMechsRemaining += 1;
                }
            }

            BuildLabel(user, comp, userMechsRemaining, compMechsRemaining);
            
            if (compMechsRemaining > userMechsRemaining)       //Assign the winner based on which side has more mechs remaining.                           
            {
                lblResult.Text = "Computer wins!";                                                 
            }
            else if (userMechsRemaining > compMechsRemaining)
            {
                lblResult.Text = "You win!";
            }
            else
            {
                lblResult.Text = "It's a draw!";
            }
        }

        private void BattleSequence(Lance user, Lance comp, Random rnd)
        {            
            AlterPosition(user, comp, rnd, "initiate");              //Assing a starting position for each mech.
            while (user.LanceDefense > 0 && comp.LanceDefense > 0)
            {
                AlterPosition(user, comp, rnd, "adjust");           //Move mechs from their current position.
                CheckPosition(user, comp, rnd);                     //Check if any mechs are close enough to fire their weapons at eachother.
                AlterLanceRatings(user);                            //Adjust ratings based on the results of CheckPosition.
                AlterLanceRatings(comp);              
            }            
        }

        private void AlterPosition(Lance user, Lance comp, Random rnd, string caseSwitch)
        {
            switch (caseSwitch)
            {
                case "initiate":                    //Places mechs on opposites sides of the map, in a likely uneven battle line.
                    for (int i = 0; i < 4; i++)
                    {
                        user.Mechs[i].BattlePosition = rnd.Next(900, 1000); 
                        comp.Mechs[i].BattlePosition = rnd.Next(900, 1000);
                    }
                    break;
                case "adjust":
                    AssignSpeed(user);          //Assign speed to mechs based on their size.
                    AssignSpeed(comp);
                    break;                
            }
        }

        private void AlterLanceRatings(Lance lance)
        {
            lance.LanceDefense = 0;            
            for (int i = 0; i < 4; i++)     //If any mech in the lance is still operational, reflect that in the lances defense rating.
            {
                BaseMech mech = lance.Mechs[i];
                if (mech.MechDefense > 0) lance.LanceDefense += (int)mech.MechDefense;                              
            }            
        }

        //Cycle through each operational mech in the user's lance.  Cycle through each operational mech in the oppenent's lance in relation 
        //to each mech in the user's lance.  If a mech is within 1000 of another mech, get an accurate reading of how close they are using
        //GaugeDistance().  Move on to the next user mech once a target is found.
        //
        //Could there be Async actions using this method?
        private void CheckPosition(Lance user, Lance comp, Random rnd)
        {
            for (int i = 0; i < 4; i++)         
            {
                //int h = rnd.Next(0, 3);                 //Accesses random mech in the list.
                BaseMech u = user.Mechs[i];
                if (u.MechDefense <= 0) continue;            //If mech is dead, skip to the next mech.
                for (int k = 0; k < 4; k++)
                {
                    //int j = rnd.Next(0, 3);                 //Accesses random mech in the list.
                    BaseMech c = comp.Mechs[k];
                    if (c.MechDefense <= 0) continue;            //If mech is dead, skip to the next mech.
                    int distance = c.BattlePosition + u.BattlePosition;
                    if (distance <= 1000)
                    {
                        GaugeDistance(u, c, distance, rnd);
                        break;   
                    }
                }
            }
        }

        //Increse the chance to hit with a shot as the distance between 2 mechs gets smaller.
        private void GaugeDistance(BaseMech user, BaseMech comp, int distance, Random rnd)
        {
            if (distance < 1000 && distance >= 700)
            {
                Fire(user, comp, 60, rnd);
                Fire(comp, user, 60, rnd);
            }
            else if (distance < 700 && distance > 300)
            {
                Fire(user, comp, 75, rnd);
                Fire(comp, user, 75, rnd);
            }
            else
            {
                Fire(user, comp, 90, rnd);
                Fire(comp, user, 90, rnd);
            }
        }

        private void Fire(BaseMech mech, BaseMech opponent, double hitChance, Random rnd)
        {
            double tempMechAttack = 0;            
            int mechAttack = 0;
            int divisor = 4;            //Break the mech's total attack rating into 4 seperate shots.
            tempMechAttack = (double)mech.MechAttack / divisor;  
           
            for (int i = 0; i < divisor; i++)
            {
                if (rnd.Next(1, 100) <= hitChance)  //Check if the random number falls within the chance to hit.
                {
                    mechAttack += (int)tempMechAttack;  //If the shot is successful, add it to the mech's attack for this turn.
                }
            }
            opponent.MechDefense -= mechAttack;        //Subtract the successful shots total from the oppenents defense rating.     
        }

        //Determine how much of the remaining distance to the center of the map will be travelled by each mech.  Faster
        //mechs travel farther each turn.  This allows some mechs to start firing before others.
        private void AssignSpeed(Lance lance)
        {
            double ratio = 0;
            double tempPos = 0;

            for (int i = 0; i < 4; i++)
            {
                BaseMech mech = lance.Mechs[i];
                int pos = mech.BattlePosition;

                Dictionary<string, double> distancePercentageDictionary = new Dictionary<string, double> {
                    {"Light", .25},
                    {"Medium", .20},
                    {"Heavy", .15},
                    {"Assault", .10}
                };
                ratio = distancePercentageDictionary[mech.WeightClass];
                tempPos = ((double)pos * ratio);
                mech.BattlePosition -= (int)tempPos;
            }
        }       
        
        //Fill the labels with the appropriate data.
        private void BuildLabel(Lance user, Lance comp, int userMechsRemaining, int compMechsRemaining)
        {
            txtUserLanceName.Text = user.LanceName;
            lblUserAttack.Text = user.LanceAttack.ToString();
            lblUserDefense.Text = user.LanceDefense.ToString();
            lblUserMargin.Text = userMechsRemaining.ToString();
            txtCompLanceName.Text = comp.LanceName;
            lblCompAttack.Text = comp.LanceAttack.ToString();
            lblCompDefense.Text = comp.LanceDefense.ToString();
            lblCompMargin.Text = compMechsRemaining.ToString();
        }        
    }   
}