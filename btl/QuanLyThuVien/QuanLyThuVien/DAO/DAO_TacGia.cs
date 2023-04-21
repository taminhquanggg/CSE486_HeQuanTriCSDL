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
    public class DAO_TacGia
    {
        private static DAO_TacGia instance;
        public static DAO_TacGia Instance
        {
            get { if (instance == null) instance = new DAO_TacGia(); return instance; }
            private set { instance = value; }
        }

        public bool deleted = false;

        SqlConnection conn;

        private DAO_TacGia() 
        {
            conn = new SqlConnection(Properties.Settings.Default.ConnectionString);
        }

        public DataTable GetListTacGia(ref SqlDataAdapter da)
        {
            string query = "SELECT * FROM TAC_GIA";
            
            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetTacGiaByName(string tenTacGia, ref SqlDataAdapter da)
        {
            string query = string.Format("SELECT * FROM fn_GetTacGiaByName(N'{0}')", tenTacGia);

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public string AddTacGia(TAC_GIA tacgia)
        {

            string query = string.Format("insert into TAC_GIA(TenTacGia, TieuSu) values (N'{0}', '{1}', N'{2}')", tacgia.TenTacGia, tacgia.TieuSu);
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

        public string DelTacGia(string maTacGia)
        {
            string query = string.Format("delete TAC_GIA where MaTacGia = {0}", maTacGia);
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
