using System;
using System.Linq;


namespace J_Dimension.App_Code
{
    public class LinqDataAccess
    {
        public MechGameEntities entities = new MechGameEntities();
        
        public LinqDataAccess () { }

        public void addLanceNametoMechGroupTable (string name) 
        {
            MechGroup newMechGroup = new MechGroup();
            newMechGroup.Name = name;
            entities.MechGroups.Add(newMechGroup);
            entities.SaveChanges();
        }

        public void addMechtoMechTable(string name, int attack, int defense, int weight, string faction, string range, string speed, string pilot, int mechgroupid)
        {
            Mech newMech = new Mech(); 
            newMech.Name = name;
            newMech.Faction = faction;
            newMech.Attack = attack;
            newMech.Defense = defense;
            newMech.Weight = weight;
            newMech.Range = range;
            newMech.Speed = speed;
            newMech.Pilot = pilot;
            newMech.MechGroupId = mechgroupid;
            entities.Mechs.Add(newMech);
            entities.SaveChanges();
        }

        public void addMechtoMechTemplateTable(string name, string weight, string faction)
        {
            MechTemplate newMechTemplate = new MechTemplate();            
            newMechTemplate.Name = name;
            newMechTemplate.Faction = faction;          
            newMechTemplate.Weight = Convert.ToInt32(weight);                           
            entities.MechTemplates.Add(newMechTemplate);
            entities.SaveChanges();            
        }

        public void addRatingstoMechGroupTable(int attack, int defense, int mechgroupid)
        {
            var match = from m in entities.MechGroups
                        where m.Id == mechgroupid
                        select m;
            MechGroup mechgroup = match.Single();
            mechgroup.Attack = attack;
            mechgroup.Defense = defense;
            entities.SaveChanges();
        }

        public string getMechGroupName(int mechgroupid)
        {
            var match = from m in entities.MechGroups
                        where m.Id == mechgroupid
                        select m;
            MechGroup mechgroup = match.Single();            
            return mechgroup.Name;
        }

        public int countMechGroupRows()
        {
            int count = (from m in entities.MechGroups
                         select m).Count();
            return count;
        }
    }
}