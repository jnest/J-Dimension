namespace J_Dimension.Models
{
    public class BaseMech
    {
        public MechGameEntities entities = new MechGameEntities();

        public string MechName { get; set; }
        public string WeightClass { get; set; }
        public string Faction { get; set; }
        public int MechWeight { get; set; }
        public int MechAttack { get; set; }
        public int MechDefense { get; set; }
        public int BattlePosition { get; set; }

        public BaseMech(Mech mech) 
        {
            MechName = mech.Name;
            MechAttack = mech.Attack;
            MechDefense = mech.Defense;
            MechWeight = mech.Weight;
            WeightClass = AssignMechWeightClass(mech.Weight);
            Faction = mech.Faction;
        }

        private string AssignMechWeightClass(int weight) 
        {
            if (weight <= 35) { return "Light"; }
            else if (weight <= 55 && weight > 35) { return "Medium"; }
            else if (weight < 80 && weight > 55) { return "Heavy"; }
            else { return "Assault"; }
        }   
    }
}