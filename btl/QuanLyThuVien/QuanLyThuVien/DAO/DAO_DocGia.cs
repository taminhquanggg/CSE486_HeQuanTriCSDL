using QuanLyThuVien.DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DAO
{
    public class DAO_DocGia
    {
        private static DAO_DocGia instance;
        public static DAO_DocGia Instance
        {
            get { if (instance == null) instance = new DAO_DocGia(); return instance; }
            private set { instance = value; }
        }

        public bool deleted = false;

        SqlConnection conn;

        private DAO_DocGia()
        {
            conn = new SqlConnection(Properties.Settings.Default.ConnectionString);
        }

        public DataTable GetListDocGia(ref SqlDataAdapter da)
        {
            string query = "SELECT * FROM vw_GetListDocGia";

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetDocGiaByName(string tenDocGia, ref SqlDataAdapter da)
        {
            string query = string.Format("SELECT * FROM fn_GetDocGiaByName(N'{0}')", tenDocGia);

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public string AddDocGia(DOC_GIA docgia)
        {
            string query = string.Format("insert into DOC_GIA(TenDocGia, NgaySinh, GioiTinh, SDT, DiaChi) values (N'{0}', '{1}', N'{2}', '{3}', N'{4}')", docgia.TenDocGia, docgia.NgaySinh, docgia.GioiTinh, docgia.SDT, docgia.DiaChi);
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

        public string DelDocGia(string maDocGia)
        {
            string query = string.Format("delete DOC_GIA where MaDocGia = {0}", maDocGia);
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
