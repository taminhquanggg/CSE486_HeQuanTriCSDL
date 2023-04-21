using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DAO
{
    public class DAO_Sach
    {
        private static DAO_Sach instance;
        public static DAO_Sach Instance
        {
            get { if (instance == null) instance = new DAO_Sach(); return instance; }
            private set { instance = value; }
        }

        public bool deleted = false;

        SqlConnection conn;

        private DAO_Sach()
        {
            conn = new SqlConnection(Properties.Settings.Default.ConnectionString);
        }

        public DataTable GetListSach(ref SqlDataAdapter da)
        {
            string query = "SELECT * FROM vw_GetListSach";

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetListSachByTheLoai(ref SqlDataAdapter da, int maTheLoai)
        {
            string query = String.Format("SELECT * FROM vw_GetListSach where MaTheLoai = {0}", maTheLoai);

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }
    }
}
