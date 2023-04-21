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
    public class DAO_PhieuMuon
    {
        private static DAO_PhieuMuon instance;
        public static DAO_PhieuMuon Instance
        {
            get { if (instance == null) instance = new DAO_PhieuMuon(); return instance; }
            private set { instance = value; }
        }

        public bool deleted = false;

        SqlConnection conn;

        private DAO_PhieuMuon()
        {
            conn = new SqlConnection(Properties.Settings.Default.ConnectionString);
        }

        public DataTable GetListPhieuMuon(ref SqlDataAdapter da)
        {
            string query = "SELECT * FROM vw_GetListPhieuMuon";

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetPhieuMuonByMaPhieu(ref SqlDataAdapter da, string MaPhieu)
        {
            string query = String.Format("SELECT * FROM vw_GetListPhieuMuon where MaPhieu = {0}", MaPhieu);

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public string AddPhieuMuon(PHIEU_MUON phieumuon)
        {

            string query = string.Format("insert into PHIEU_MUON(MaThe, MaNV, NgayMuon, NgayHenTra) values ({0}, {1}, '{2}', '{3}')", phieumuon.MaThe, phieumuon.MaNV, phieumuon.NgayMuon, phieumuon.NgayHenTra);
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

        public string GetNextMaPhieu()
        {
            string query = "SELECT IDENT_CURRENT('PHIEU_MUON')";
            try
            {
                DataTable result = DataProvider.Instance.ExecuteQuery(query);
                int id = Int32.Parse(result.Rows[0][0].ToString()) + 1;
                return id.ToString();
            }

            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string DelPhieuMuon(int maPhieuMuon)
        {
            string query = string.Format("delete PHIEU_MUON where MaPhieu = {0}", maPhieuMuon);
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

        public DataTable GetHoaDonByMaPhieu(string maphieu)
        {
            string query = String.Format("SELECT * FROM vw_HoaDonMuon where MaPhieu = {0}", maphieu);

            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetDataPrint(string maPhieu)
        {
            string query = String.Format(@"select vw_GetListPhieuMuon.*, 
                                        vw_GetListTheTV.*, 
                                        vw_ChiTietMuon.*,
                                        vw_HoaDonMuon.*,  
                                        NHAN_VIEN.TenNV
                                        from vw_GetListPhieuMuon
                                        inner join vw_GetListTheTV on vw_GetListPhieuMuon.MaThe = vw_GetListTheTV.MaThe
                                        inner join vw_ChiTietMuon on vw_GetListPhieuMuon.MaPhieu = vw_ChiTietMuon.MaPhieu
                                        inner join vw_HoaDonMuon on vw_GetListPhieuMuon.MaPhieu = vw_HoaDonMuon.MaPhieu
                                        inner join NHAN_VIEN on vw_GetListPhieuMuon.MaNV = NHAN_VIEN.MaNV
                                        where vw_GetListPhieuMuon.MaPhieu = {0}", maPhieu);
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetListTTPhieuMuon(ref SqlDataAdapter da, string MaPhieu = "")
        {
            string query = @"SELECT * FROM vw_GetListPhieuMuon
                            inner join THE_TV on vw_GetListPhieuMuon.MaThe = THE_TV.MaThe
                            inner join DOC_GIA on THE_TV.MaDocGia = DOC_GIA.MaDocGia where 1=1 ";

            if (MaPhieu != "")
            {
                query += " and vw_GetListPhieuMuon.MaPhieu = " + MaPhieu;
            }
            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetListTTPhieuMuon(ref SqlDataAdapter da)
        {
            string query = @"SELECT * FROM vw_GetListPhieuMuon
                            inner join THE_TV on vw_GetListPhieuMuon.MaThe = THE_TV.MaThe
                            inner join DOC_GIA on THE_TV.MaDocGia = DOC_GIA.MaDocGia where 1=1 ";

            da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public DataTable GetListTTPhieuMuon(string MaPhieu = "")
        {
            string query = @"SELECT * FROM vw_GetListPhieuMuon
                            inner join THE_TV on vw_GetListPhieuMuon.MaThe = THE_TV.MaThe
                            inner join LOAI_THE on THE_TV.MaLoaiThe = LOAI_THE.MaLoaiThe
                            inner join DOC_GIA on THE_TV.MaDocGia = DOC_GIA.MaDocGia 
                            where vw_GetListPhieuMuon.MaPhieu = " + MaPhieu;

            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(da);
            DataTable data = new DataTable();

            da.Fill(data);

            return data;
        }

        public string TraSach(string MaPhieu)
        {

            string query = string.Format("Update PHIEU_MUON_CHI_TIET set NgayTra = GETDATE() where MaPhieu = {0}", MaPhieu);
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

        public string UpdateSoDu(string soDu, string mathe)
        {
            string query = string.Format("Update THE_TV set SoDu = {0} where MaThe = {1}", soDu, mathe);
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
