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
    public class DAO_TheLoaiSach
    {
        private static DAO_TheLoaiSach instance;
        public static DAO_TheLoaiSach Instance
        {
            get { if (instance == null) instance = new DAO_TheLoaiSach(); return instance; }
            private set { instance = value; }
        }

        public bool deleted = false;

        SqlConnection conn;

        private DAO_TheLoaiSach() 
        {
            conn = new SqlConnection(Properties.Settings.Default.ConnectionString);

        }

        public DataTable GetListTheLoai(ref SqlDataAdapter da)
        {
            string query = "SELECT * FROM vw_GetListTheLoai";
            
            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetTheLoaiByName(string tenTheLoai, ref SqlDataAdapter da)
        {
            string query = string.Format("SELECT * FROM fn_GetTheLoaiByName(N'{0}')", tenTheLoai);

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public string AddTheLoai(THE_LOAI_SACH TheLoai)
        {

            string query = string.Format("insert into THE_LOAI_SACH(TenTheLoai, MoTa) values (N'{0}', '{1}', N'{2}')", TheLoai.TenTheLoai, TheLoai.MoTa);
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

        public string DelTheLoai(string maTheLoai)
        {
            string query = string.Format("delete THE_LOAI_SACH where MaTheLoai = {0}", maTheLoai);
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
