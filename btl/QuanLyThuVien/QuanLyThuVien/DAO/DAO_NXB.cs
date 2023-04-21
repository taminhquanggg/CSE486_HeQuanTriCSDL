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
    public class DAO_NXB
    {
        private static DAO_NXB instance;
        public static DAO_NXB Instance
        {
            get { if (instance == null) instance = new DAO_NXB(); return instance; }
            private set { instance = value; }
        }

        public bool deleted = false;

        SqlConnection conn;

        private DAO_NXB() 
        {
            conn = new SqlConnection(Properties.Settings.Default.ConnectionString);
        }

        public DataTable GetListNXB(ref SqlDataAdapter da)
        {
            string query = "SELECT * FROM vw_GetListNXB";

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder= new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);
            
            return data;
        }

        public DataTable GetNXBByName(string tenNXB, ref SqlDataAdapter da)
        {
            string query = string.Format("SELECT * FROM fn_GetNXBByName(N'{0}')", tenNXB);

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public string AddNXB(NHA_XUAT_BAN nhaxuatban)
        {
            
            string query = string.Format("insert into NHA_XUAT_BAN(TenNXB, SDT, DiaChi) values (N'{0}', '{1}', N'{2}')", nhaxuatban.TenNXB, nhaxuatban.SDT, nhaxuatban.DiaChi);
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

        public string DelNXB(string maNXB)
        {
            string query = string.Format("delete NHA_XUAT_BAN where MaNXB = {0}", maNXB);
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
