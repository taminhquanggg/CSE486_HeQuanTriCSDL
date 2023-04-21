using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DAO
{
    public class DAO_NhanVien
    {
        private static DAO_NhanVien instance;
        public static DAO_NhanVien Instance
        {
            get { if (instance == null) instance = new DAO_NhanVien(); return instance; }
            private set { instance = value; }
        }

        public bool deleted = false;

        SqlConnection conn;

        private DAO_NhanVien()
        {
            conn = new SqlConnection(Properties.Settings.Default.ConnectionString);
        }

        public DataTable GetListNhanVien(ref SqlDataAdapter da)
        {
            string query = "SELECT * FROM vw_GetListNhanVien";

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }
    }
}
