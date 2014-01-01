namespace J_Dimension.App_Code
{
    public class Calculations
    {
        public int calcAttack(string range, string speed, string pilot, int weight, string faction)
        {
            int attack = weight;
            if (faction == "Clan") { attack += 10; }
            if (speed == "Slow") { attack += 5; }
            else if (speed == "Average") { attack += 0; }
            else { attack -= 5; }
            if (pilot == "Green") { attack -= 15; }
            else if (pilot == "Veteran") { attack += 0; }
            else { attack += 15; }
            return attack;
        }

        public int calcDefense(string range, string speed, string pilot, int weight, string faction) 
        {
            int defense = weight;
            if (faction == "Clan") { defense += 10; }
            if (speed == "Slow") { defense += 5; }
            else if (speed == "Average") { defense += 0; }
            else { defense -= 5; }
            if (pilot == "Green") { defense -= 15; }
            else if (pilot == "Veteran") { defense += 0; }
            else { defense += 15; }
            return defense;
        }
    }
}