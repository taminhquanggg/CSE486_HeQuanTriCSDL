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
    public partial class frmTraSach : Form
    {
        public frmTraSach()
        {
            InitializeComponent();
        }


        BindingSource PhieuMuonList = new BindingSource();
        SqlDataAdapter daPhieuMuon = new SqlDataAdapter();
        DataTable dtPhieuMuon = new DataTable();

        BindingSource ChiTietList = new BindingSource();
        SqlDataAdapter daChiTiet = new SqlDataAdapter();
        DataTable dtChiTiet = new DataTable();

        SqlDataAdapter daHoaDon = new SqlDataAdapter();
        DataTable dtHoaDon = new DataTable();

        private void frmTraSach_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void LoadData()
        {
            dgvPhieuMuon.AutoGenerateColumns = false;
            dgvPhieuMuon.DataSource = PhieuMuonList;
            bindingNavigator1.BindingSource = PhieuMuonList;
            LoadListPhieuMuon();
        }

        void LoadListPhieuMuon()
        {
            PhieuMuonList.DataSource = DAO_PhieuMuon.Instance.GetListTTPhieuMuon(ref daPhieuMuon);
            
        }

        private void dgvPhieuMuon_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            dtPhieuMuon = DAO_PhieuMuon.Instance.GetListTTPhieuMuon(dgvPhieuMuon.Rows[e.RowIndex].Cells["MaPhieu"].Value.ToString());
            

            txtMaPhieu.Text = dtPhieuMuon.Rows[0]["MaPhieu"].ToString();
            txtHoTen.Text = dtPhieuMuon.Rows[0]["TenDocGia"].ToString();
            txtGioiTinh.Text = dtPhieuMuon.Rows[0]["GioiTinh"].ToString();
            txtLoaiThe.Text = dtPhieuMuon.Rows[0]["TenLoaiThe"].ToString();
            txtSDT.Text = dtPhieuMuon.Rows[0]["SDT"].ToString();
            txtDiaChi.Text = dtPhieuMuon.Rows[0]["DiaChi"].ToString();
            txtNgayMuon.Text = dtPhieuMuon.Rows[0]["NgayMuon"].ToString();
            txtNgaySinh.Text = dtPhieuMuon.Rows[0]["NgaySinh"].ToString();
            txtNgayHetHan.Text = dtPhieuMuon.Rows[0]["NgayHenTra"].ToString();

            
            LoadChiTietPhieu(txtMaPhieu.Text);
        }

        void LoadChiTietPhieu(string MaPhieu)
        {
            dtHoaDon = DAO_PhieuMuon.Instance.GetHoaDonByMaPhieu(MaPhieu);
            txtTienPhat.Text = dtHoaDon.Rows[0]["TienPhat"].ToString();
            if (dtHoaDon.Rows[0]["DaTra"].ToString() == "True")
            {
                pbDaTra.Visible = true;
            }
            else
            {
                pbDaTra.Visible = false;

            }


            dgvChiTietMuon.AutoGenerateColumns = false;
            dgvChiTietMuon.DataSource = ChiTietList;
            bindingNavigator2.BindingSource = ChiTietList;
            ChiTietList.DataSource = DAO_PhieuMuonChiTiet.Instance.GetListPhieuChiTiet(ref daChiTiet, MaPhieu);
        }

        private void btnTraSach_Click(object sender, EventArgs e)
        {
            DAO_PhieuMuon.Instance.TraSach(txtMaPhieu.Text);
            LoadChiTietPhieu(txtMaPhieu.Text);
            int t = txtTienPhat.Text.IndexOf(".");
            int soDu = Int32.Parse(dtPhieuMuon.Rows[0]["SoDu"].ToString().Substring(0, dtPhieuMuon.Rows[0]["SoDu"].ToString().IndexOf("."))) -  Int32.Parse(txtTienPhat.Text.Substring(0, t));

            DAO_PhieuMuon.Instance.UpdateSoDu(soDu.ToString(), txtMaPhieu.Text);
        }
    }
}
