using System;
using System.Collections.Generic;
using J_Dimension.App_Code;

namespace J_Dimension.Models
{
    public class Lance
    {
        public MechGameEntities entities = new MechGameEntities();
        
        public string LanceName { get; set; }
        public int LanceAttack { get; set; }
        public int LanceDefense { get; set; }
        public List<BaseMech> Mechs = new List<BaseMech>();

        public Lance(int mechGroupRow)
        {
            GetMechs(mechGroupRow);                
        }

        private void GetMechs(int mechGroupRow)
        {
            LanceName = new LinqDataAccess().getMechGroupName(mechGroupRow);
            
            foreach (Mech mech in entities.Mechs)
            {
                if (mech.MechGroupId == mechGroupRow)
                {
                    Mechs.Add(new BaseMech(mech));                    
                    LanceAttack += (int)mech.Attack;
                    LanceDefense += (int)mech.Defense;
                }
            }
        }          
    }
}