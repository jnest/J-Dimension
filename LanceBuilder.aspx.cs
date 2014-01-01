using System;
using J_Dimension.App_Code;

namespace J_Dimension
{
    public partial class LanceBuilder : System.Web.UI.Page
    {
        public MechGameEntities entities = new MechGameEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }        

        protected void OnClickSubmit(object sender, EventArgs e) 
        {
            int MechGroupId = 0;         //The auto-incremented ID of the MechGroup table assigned when the new lance name is added.
            int MechGroupAttack = 0;     //The combined ATTACK value of the mechs associated with the current mech group.
            int MechGroupDefense = 0;    //The combined DEFENSE value of the mechs associated with the current mech group.

            int[] array = new int[4];
            array[0] = Convert.ToInt32(ddlLancemate1.SelectedValue);
            array[1] = Convert.ToInt32(ddlLancemate2.SelectedValue);
            array[2] = Convert.ToInt32(ddlLancemate3.SelectedValue);
            array[3] = Convert.ToInt32(ddlLancemate4.SelectedValue);

            string LanceName = txtLanceName.Text;
            new LinqDataAccess().addLanceNametoMechGroupTable(LanceName);  //Adds the name of the new lance to MechGroup table
                        
            foreach (MechGroup mechgroup in entities.MechGroups)           //This foreach loop retrieves the Id of the newly added MechGroup and assigns it to MechGroupId
            {
                string Name = Convert.ToString(mechgroup.Name);         
                if (LanceName == Name)
                {
                    int g = Convert.ToInt32(mechgroup.Id);
                    MechGroupId = g;
                }
            }            

            for (int i = 0; i < 4; i++)
            {                
                int id = array[i];
                foreach (MechTemplate mechtemplate in entities.MechTemplates)  //This foreach loop compares each value in the array against the Ids in the MechTemplate
                {
                    int k = mechtemplate.Id;
                    if (id == k)                           //If the value matches the Id; MechGroupAttack & MechGroupDefense are incremented with the value of the current mech's attack and defense
                    {
                        string MechRange = null;
                        string MechSpeed = null;
                        string MechPilot = null;                        
                        switch (i)
                        {
                            case 0:
                                MechRange = ddlRange1.Text;
                                MechSpeed = ddlSpeed1.Text;
                                MechPilot = ddlPilot1.Text;
                                break;
                            case 1:
                                MechRange = ddlRange2.Text;
                                MechSpeed = ddlSpeed2.Text;
                                MechPilot = ddlPilot2.Text;
                                break;
                            case 2:
                                MechRange = ddlRange3.Text;
                                MechSpeed = ddlSpeed3.Text;
                                MechPilot = ddlPilot3.Text;
                                break;
                            case 3:
                                MechRange = ddlRange4.Text;
                                MechSpeed = ddlSpeed4.Text;
                                MechPilot = ddlPilot4.Text;
                                break;                           
                        }
                        
                        string MechName = mechtemplate.Name;
                        string MechFaction = mechtemplate.Faction;                         
                        int MechWeight = mechtemplate.Weight;

                        Calculations calc = new Calculations();
                        int MechAttack = calc.calcAttack(MechRange, MechSpeed, MechPilot, MechWeight, MechFaction);
                        int MechDefense = calc.calcDefense(MechRange, MechSpeed, MechPilot, MechWeight, MechFaction);

                        MechGroupAttack += MechAttack;
                        MechGroupDefense += MechDefense;
                        new LinqDataAccess().addMechtoMechTable(MechName, MechAttack, MechDefense, MechWeight, MechFaction, MechRange, MechSpeed, MechPilot, MechGroupId);   //Adds the mech to the Mech table along with its attack, defense, and mechgroupid                     
                    }
                }
            }

            lblMessage.Text = LanceName + " has been created as lance number " + MechGroupId + ".";
            
            new LinqDataAccess().addRatingstoMechGroupTable(MechGroupAttack, MechGroupDefense, MechGroupId);   //Adds the calculated attack and defense ratings of the new lance to the MechGroup table

            txtLanceName.Text = String.Empty;            
            gvMechGroup.DataBind();
        }

        private void assignAttributes(int lancemate)
        {

        }

        protected void btnRange_Click(object sender, EventArgs e)
        {
            string newRange = ddlRange1.Text;
            ddlRange2.Text = newRange;
            ddlRange3.Text = newRange;
            ddlRange4.Text = newRange;
        }

        protected void btnSpeed_Click(object sender, EventArgs e)
        {
            string newSpeed = ddlSpeed1.Text;
            ddlSpeed2.Text = newSpeed;
            ddlSpeed3.Text = newSpeed;
            ddlSpeed4.Text = newSpeed;
        }

        protected void btnPilot_Click(object sender, EventArgs e)
        {
            string newPilot = ddlPilot1.Text;
            ddlPilot2.Text = newPilot;
            ddlPilot3.Text = newPilot;
            ddlPilot4.Text = newPilot;
        }
    }
}