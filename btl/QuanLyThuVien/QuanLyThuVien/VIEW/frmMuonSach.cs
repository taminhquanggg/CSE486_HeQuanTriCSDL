using CrystalDecisions.CrystalReports.Engine;
using QuanLyThuVien.DAO;
using QuanLyThuVien.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVien.VIEW
{
    public partial class frmMuonSach : Form
    {
        SqlDataAdapter daPhieuMuon = new SqlDataAdapter();
        DataTable dtPhieuMuon = new DataTable();

        SqlDataAdapter daNV = new SqlDataAdapter();
        DataTable dtNV = new DataTable();

        SqlDataAdapter daTV = new SqlDataAdapter();
        DataTable dtTV = new DataTable();

        SqlDataAdapter daTheLoai = new SqlDataAdapter();
        DataTable dtTheLoai = new DataTable();

        SqlDataAdapter daSach = new SqlDataAdapter();
        DataTable dtSach = new DataTable();

        BindingSource ChiTietList = new BindingSource();
        SqlDataAdapter daChiTiet = new SqlDataAdapter();
        DataTable dtChiTiet = new DataTable();
        
        SqlDataAdapter daHoaDon = new SqlDataAdapter();
        DataTable dtHoaDon = new DataTable();

        public frmMuonSach()
        {
            InitializeComponent();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnViewList_Click(object sender, EventArgs e)
        {
            frmListPhieuMuon fView = new frmListPhieuMuon();
            fView.ShowDialog();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            DialogResult di = MessageBox.Show("Nhập mới thông tin phiếu mượn ?", "Thông báo !!!", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (di == DialogResult.Yes)
            {
                txtMaPhieu.BackColor = Color.Khaki;
                txtMaPhieu.Focus();
                txtMaPhieu.Text = DAO_PhieuMuon.Instance.GetNextMaPhieu();
            }
            else
            {
                txtSearch.Focus();
            }
        }

        private void frmMuonSach_Load(object sender, EventArgs e)
        {
            LoadNhanVien();
            LoadTV();
            LoadTheLoai();
            LoadSach();
        }

        void LoadNhanVien()
        {
            dtNV = DAO_NhanVien.Instance.GetListNhanVien(ref daNV);
            cbNhanVien.DataSource = dtNV;
            cbNhanVien.DisplayMember = "TenNV";
            cbNhanVien.ValueMember = "MaNV";
            cbNhanVien.SelectedIndex = -1;
        }

        void LoadTV()
        {
            dtTV = DAO_TheTV.Instance.GetListTheTV(ref daTV);
            cbTV.DataSource = dtTV;
            cbTV.DisplayMember = "MaThe";
            cbTV.ValueMember = "MaThe";
            cbTV.SelectedIndex = -1;
        }

        void LoadTheLoai()
        {
            dtTheLoai = DAO_TheLoaiSach.Instance.GetListTheLoai(ref daTheLoai);
            cbTheLoai.DataSource = dtTheLoai;
            cbTheLoai.DisplayMember = "TenTheLoai";
            cbTheLoai.ValueMember = "MaTheLoai";
            cbTheLoai.SelectedIndex = -1;
        }

        void LoadSach()
        {
            dtSach = DAO_Sach.Instance.GetListSach(ref daSach);
            cbSach.DataSource = dtSach;
            cbSach.DisplayMember = "TenSach";
            cbSach.ValueMember = "MaSach";
            cbSach.SelectedIndex = -1;
        }

        private void grPhieu_Leave(object sender, EventArgs e)
        {
            if (txtMaPhieu.BackColor == Color.Khaki)
            {
                PHIEU_MUON phieumuon = new PHIEU_MUON(Int32.Parse(cbTV.SelectedValue.ToString()), Int32.Parse(cbNhanVien.SelectedValue.ToString()), dtNgayMuon.Value, dtNgayHenTra.Value);
                DAO_PhieuMuon.Instance.AddPhieuMuon(phieumuon);
                txtMaPhieu.BackColor = Color.Silver;
            }
        }

        private void cbTheLoai_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbTheLoai.SelectedIndex != -1)
            {
                int id;
                if (Int32.TryParse(cbTheLoai.SelectedValue.ToString(),out id))
                {
                    dtSach = DAO_Sach.Instance.GetListSachByTheLoai(ref daSach, id);
                    cbSach.DataSource = dtSach;
                    cbSach.DisplayMember = "TenSach";
                    cbSach.ValueMember = "MaSach";
                    cbSach.SelectedIndex = -1;
                }
                
            }
        }

        void LoadChiTietPhieu()
        {
            dgvChiTietMuon.AutoGenerateColumns = false;
            dgvChiTietMuon.DataSource = ChiTietList;
            bindingNavigator2.BindingSource = ChiTietList;
            ChiTietList.DataSource = DAO_PhieuMuonChiTiet.Instance.GetListPhieuChiTiet(ref daChiTiet, txtMaPhieu.Text);
        }

        private void cbSach_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == Convert.ToChar(Keys.Enter))
            {
                PHIEU_MUON_CHI_TIET pmchitiet = new PHIEU_MUON_CHI_TIET(Int32.Parse(txtMaPhieu.Text), Int32.Parse(cbSach.SelectedValue.ToString()), Int32.Parse(nudSL.Value.ToString()));
                DAO_PhieuMuonChiTiet.Instance.AddPhieuChiTiet(pmchitiet);
                LoadChiTietPhieu();
                LoadDataByMaPhieu();

            }
        }

        private void txtMaPhieu_TextChanged(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtMaPhieu.Text))
            {
                if (txtMaPhieu.BackColor == Color.Silver)
                {
                    LoadChiTietPhieu();
                }
            }
        }

        private void txtSearch_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == Convert.ToChar(Keys.Enter))
            {
                txtMaPhieu.Text = txtSearch.Text;
                if (txtMaPhieu.BackColor == Color.Silver)
                {
                    LoadDataByMaPhieu();
                }
            }
        }

        void LoadDataByMaPhieu()
        {
            dtPhieuMuon = DAO_PhieuMuon.Instance.GetPhieuMuonByMaPhieu(ref daPhieuMuon, txtMaPhieu.Text);

            cbNhanVien.SelectedValue = dtPhieuMuon.Rows[0]["MaNV"].ToString();
            cbTV.SelectedValue = dtPhieuMuon.Rows[0]["MaThe"].ToString();
            dtNgayHenTra.Value = DateTime.ParseExact(dtPhieuMuon.Rows[0]["NgayHenTra"].ToString(), "dd/MM/yyyy", CultureInfo.InvariantCulture);
            dtNgayMuon.Value = DateTime.ParseExact(dtPhieuMuon.Rows[0]["NgayMuon"].ToString(), "dd/MM/yyyy", CultureInfo.InvariantCulture);

            LoadChiTietPhieu();
            LoadHoaDon();
        }

        void LoadHoaDon()
        {
            dtHoaDon = DAO_PhieuMuon.Instance.GetHoaDonByMaPhieu(txtMaPhieu.Text);
            txtTongThanhToan.Text = dtHoaDon.Rows[0]["TongThanhToan"].ToString();
            txtTongSachMuon.Text = dtHoaDon.Rows[0]["TongSachMuon"].ToString();
            txtTongGiamGia.Text = dtHoaDon.Rows[0]["TongGiamGia"].ToString();
            txtTongPhaiTra.Text = dtHoaDon.Rows[0]["TongPhaiTra"].ToString();
            string ThanhToan = dtHoaDon.Rows[0]["ThanhToan"].ToString();
            if (String.IsNullOrEmpty(dtHoaDon.Rows[0]["ThanhToan"].ToString()))
            {
                btnThanhToan.Enabled = true;
                pbChuaThuTien.Visible = true;
                pbThuTien.Visible = false;
            }    
            else if (dtHoaDon.Rows[0]["ThanhToan"].ToString() == "True")
            {
                btnThanhToan.Enabled = false;
                pbChuaThuTien.Visible = false;
                pbThuTien.Visible = true;
            }
            else if (dtHoaDon.Rows[0]["ThanhToan"].ToString() == "False")
            {
                btnThanhToan.Enabled = true;
                pbChuaThuTien.Visible = true;
                pbThuTien.Visible = false;
            }
        }

        private void btnThanhToan_Click(object sender, EventArgs e)
        {
            DataTable dt = DAO_PhieuMuon.Instance.GetListTTPhieuMuon(txtMaPhieu.Text);
            int t = txtTongPhaiTra.Text.IndexOf(".");
            if (Int32.Parse(dt.Rows[0]["SoDu"].ToString().Substring(0, dt.Rows[0]["SoDu"].ToString().IndexOf("."))) > Int32.Parse(txtTongPhaiTra.Text.Substring(0, t)))
            {
                int soDu = Int32.Parse(dt.Rows[0]["SoDu"].ToString().Substring(0, dt.Rows[0]["SoDu"].ToString().IndexOf("."))) - Int32.Parse(txtTongPhaiTra.Text.Substring(0, t));

                DAO_PhieuMuonChiTiet.Instance.ThanhToan(txtMaPhieu.Text);
                DAO_PhieuMuon.Instance.UpdateSoDu(soDu.ToString(), cbTV.SelectedValue.ToString());
                LoadDataByMaPhieu();
            }
            else
            {
                MessageBox.Show("Số dư không đủ", "Thông báo !!!!");
            }
        }

        private void btnInPhieu_Click(object sender, EventArgs e)
        {
            try
            {
                using (ReportDocument rpclass = new ReportDocument())
                {
                    rpclass.Load("Report/rptPhieuMuon.rpt");
                    rpclass.SetDataSource(DAO_PhieuMuon.Instance.GetDataPrint(txtMaPhieu.Text));
                    frmReportViewer reportViewer = new frmReportViewer();
                    reportViewer.Report = rpclass;
                    reportViewer.ShowDialog();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error !!!");
            }
        }
    }
}
