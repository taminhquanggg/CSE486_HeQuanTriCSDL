using QuanLyThuVien.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DAO
{
    public class DAO_TheTV
    {
        private static DAO_TheTV instance;
        public static DAO_TheTV Instance
        {
            get { if (instance == null) instance = new DAO_TheTV(); return instance; }
            private set { instance = value; }
        }

        public bool deleted = false;

        SqlConnection conn;

        public DAO_TheTV()
        {
            conn = new SqlConnection(Properties.Settings.Default.ConnectionString);
        }

        public DataTable GetListTheTV(ref SqlDataAdapter da)
        {
            string query = "SELECT * FROM vw_GetListTheTV";

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetTheTVByID(int maThe)
        {
            string query = string.Format("SELECT * FROM fn_GetTheTVByID({0})", maThe);

            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetTheTVByName(string tenThanhVien, ref SqlDataAdapter da)
        {
            string query = string.Format("SELECT * FROM fn_GetTheTVByName(N'{0}')", tenThanhVien);

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public string AddTheTV(THE_TV theTV)
        {

            string query = string.Format("insert into THE_TV(MaDocGia, MaLoaiThe, NgayCap, NgayHetHan, SoDu) values (N'{0}', '{1}', '{2}', '{3}', {4})", theTV.MaDocGia, theTV.MaLoaiThe, theTV.NgayCap, theTV.NgayHetHan, theTV.SoDu);
            try
            {
                string result = DataProvider.Instance.ExecuteCaptureQueryStore(query).ToString();
                return result;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }

            //return result > 0;
        }

        public string DelTheTV(string maTheTV)
        {
            string query = string.Format("delete THE_TV where MaThe = {0}", maTheTV);
            try
            {
                string result = DataProvider.Instance.ExecuteCaptureQueryStore(query).ToString();
                deleted = true;
                return result;
            }
            catch (Exception ex)
            {
                deleted = false;
                return ex.Message;
            }
        }
    }
}
