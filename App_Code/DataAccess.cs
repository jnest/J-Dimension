using System.Data;

namespace J_Dimension.App_Code
{
    public class DataAccess
    {
        public string _connString = "Server=LENOVO-PC\\SQLEXPRESS;Database=MechGame;Integrated Security=sspi;";
        
        public DataAccess() {}
        
        public DataTable GetMechsDataTable()
        {
            return new DBUtility(_connString).ExecuteSql("SELECT Id, Name, Attack, Defense from MechTemplate");
        }

        public DataTable GetMechsList()
        {
            return new DBUtility(_connString).ExecuteSql("SELECT Id, Name from MechTemplate");
        }

        public DataTable UpdateMechGroupTable(string name)
        {
            return new DBUtility(_connString).ExecuteSql("INSERT INTO MechGroup (Name) VALUES ('" + name + "');");
        }

        public DataTable UpdateMechGroupTableRatings(int attack, int defense, int id) 
        {
            return new DBUtility(_connString).ExecuteSql("UPDATE MechGroup SET Attack='" + attack + "', Defense='" + defense + "' WHERE Id=" + id + ";");
        }

        public DataTable UpdateMechTable(string name, string attack, string defense, int mechgroup)
        {
            return new DBUtility(_connString).ExecuteSql("INSERT INTO Mech (Name, Attack, Defense, MechGroupId) VALUES ('" + name + "', '" + attack + "', '" + defense + "', '" + mechgroup + "');");
        }

        public DataTable GetMechsDataTable_ForUpdate(int id)
        {
            return new DBUtility(_connString).ExecuteSql("SELECT Id, Name, Attack, Defense FROM Mech WHERE Id=" + id + ";");
        }

        public DataTable GetMechGroups()
        {
            return new DBUtility(_connString).ExecuteSql("SELECT Id, Name FROM MechGroup");
        }

        public DataTable GetMechGroup(int id)
        {
            return new DBUtility(_connString).ExecuteSql("SELECT Name FROM MechGroup WHERE Id=" + id + ";");
        }

        public DataTable GetLance(int id)
        {
            return new DBUtility(_connString).ExecuteSql("SELECT Name, Attack, Defense FROM Mech WHERE MechGroupId=" + id + ";");
        }

        public DataTable CountMechGroupRows()
        {
            return new DBUtility(_connString).ExecuteSql("SELECT COUNT(*) FROM MechGroup;");
        }

        public DataTable UpdateMechTemplate(string name, string attack, string defense)
        {
            return new DBUtility(_connString).ExecuteSql("INSERT INTO MechTemplate (Name, Attack, Defense) VALUES ('" + name + "', '" + attack + "', '" + defense + "');");
        }

        public DataTable GetMechTemplateTable()
        {
            return new DBUtility(_connString).ExecuteSql("SELECT Id, Name, Attack, Defense FROM MechTemplate");  
        }

        public DataTable GetMechGroupTable()
        {
            return new DBUtility(_connString).ExecuteSql("SELECT Id, Name, Attack, Defense FROM MechGroup");
        }
    }
}