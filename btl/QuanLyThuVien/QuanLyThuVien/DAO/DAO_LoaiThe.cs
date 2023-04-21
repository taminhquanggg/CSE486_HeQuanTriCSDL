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
    public class DAO_LoaiThe
    {
        private static DAO_LoaiThe instance;
        public static DAO_LoaiThe Instance
        {
            get { if (instance == null) instance = new DAO_LoaiThe(); return instance; }
            private set { instance = value; }
        }

        public bool deleted = false;

        SqlConnection conn;

        private DAO_LoaiThe()
        {
            conn = new SqlConnection(Properties.Settings.Default.ConnectionString);
        }

        public DataTable GetListLoaiThe(ref SqlDataAdapter da)
        {
            string query = "SELECT * FROM vw_GetListLoaiThe";

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        //public DataTable GetLoaiTheByName(string tenLoaiThe, ref SqlDataAdapter da)
        //{
        //    string query = string.Format("SELECT * FROM fn_GetLoaiTheByName(N'{0}')", tenLoaiThe);

        //    da = new SqlDataAdapter(query, conn);
        //    SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
        //    DataTable data = new DataTable();

        //    da.Fill(data);

        //    return data;
        //}

        //public string AddLoaiThe(DOC_GIA LoaiThe)
        //{
        //    string query = string.Format("insert into DOC_GIA(TenLoaiThe, NgaySinh, GioiTinh, SDT, DiaChi) values (N'{0}', '{1}', N'{2}', '{3}', N'{4}')", LoaiThe.TenLoaiThe, LoaiThe.NgaySinh, LoaiThe.GioiTinh, LoaiThe.SDT, LoaiThe.DiaChi);
        //    try
        //    {
        //        string result = DataProvider.Instance.ExecuteCaptureQueryStore(query).ToString();
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        return ex.Message;
        //    }

        //    //return result > 0;
        //}

        //public string DelLoaiThe(string maLoaiThe)
        //{
        //    string query = string.Format("delete DOC_GIA where MaLoaiThe = {0}", maLoaiThe);
        //    try
        //    {
        //        string result = DataProvider.Instance.ExecuteCaptureQueryStore(query).ToString();
        //        deleted = true;
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        deleted = false;
        //        return ex.Message;
        //    }
        //}
    }
}
