using System.Data;
using System.Data.SqlClient;

namespace J_Dimension.App_Code
{
    public class DBUtility
    {
        public string _connString;
        private SqlConnection _conn;
        private DataTable _queryResult;

        public DBUtility(string connString)
        {
            _connString = connString;
        }

        public DataTable ExecuteSql(string query)
        {
            _conn = new SqlConnection(_connString);
            _conn.Open();

            SqlCommand cmd = new SqlCommand(query, _conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            _queryResult = new DataTable();
            da.Fill(_queryResult);

            _conn.Close();
            return _queryResult;
        }
    }
}