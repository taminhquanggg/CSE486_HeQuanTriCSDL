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
    public class DAO_PhieuMuonChiTiet
    {
        private static DAO_PhieuMuonChiTiet instance;
        public static DAO_PhieuMuonChiTiet Instance
        {
            get { if (instance == null) instance = new DAO_PhieuMuonChiTiet(); return instance; }
            private set { instance = value; }
        }

        public bool deleted = false;

        SqlConnection conn;

        private DAO_PhieuMuonChiTiet()
        {
            conn = new SqlConnection(Properties.Settings.Default.ConnectionString);
        }

        public DataTable GetListPhieuChiTiet(ref SqlDataAdapter da, string maphieu)
        {
            string query = String.Format("SELECT MaPhieu, MaSach, TenSach, SoLuong, ThanhToan, GiaMuon FROM vw_ChiTietMuon where MaPhieu = {0}", maphieu);

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public string AddPhieuChiTiet(PHIEU_MUON_CHI_TIET pmchitiet)
        {
            string query = string.Format("insert into PHIEU_MUON_CHI_TIET(MaPhieu, MaSach, SoLuong) values ({0}, {1}, {2})", pmchitiet.MaPhieu, pmchitiet.MaSach, pmchitiet.SoLuong);
            try
            {
                string result = DataProvider.Instance.ExecuteCaptureQueryStore(query).ToString();
                return result;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string ThanhToan(string MaPhieu)
        {
            string query = string.Format("update PHIEU_MUON_CHI_TIET set ThanhToan = 1 where MaPhieu = {0}", MaPhieu);
            try
            {
                string result = DataProvider.Instance.ExecuteCaptureQueryStore(query).ToString();
                return result;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
    }
}
