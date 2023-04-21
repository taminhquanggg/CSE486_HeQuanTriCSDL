using QuanLyThuVien.DTO;
using QuanLyThuVien.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QuanLyThuVien.VIEW
{
    public partial class frmAddTV : Form
    {
        public frmAddTV()
        {
            InitializeComponent();
        }

        SqlDataAdapter daDocGia = new SqlDataAdapter();
        DataTable dtDocGia = new DataTable();

        SqlDataAdapter daLoaiThe = new SqlDataAdapter();
        DataTable dtLoaiThe = new DataTable();

        public delegate void RefreshTheTV();
        public RefreshTheTV refreshTheTV;

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            frmListDocGia f = new frmListDocGia();
            f.ShowDialog();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            THE_TV theTV = new THE_TV(Int32.Parse(cbDocGia.SelectedValue.ToString()), Int32.Parse(cbLoaiThe.SelectedValue.ToString()), dtNgayCap.Value, dtNgayHetHan.Value, Double.Parse(txtSoTien.Text));
            MessageBox.Show(DAO_TheTV.Instance.AddTheTV(theTV), "Thông báo !!!");

            refreshTheTV();
            btnReset_Click(sender, e);
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            cbDocGia.SelectedIndex = -1;
            cbLoaiThe.SelectedIndex = -1;
            dtNgayCap.Value = DateTime.Now;
            dtNgayHetHan.Value = DateTime.Now.AddDays(30);
            txtSoTien.Text = "";
        }

        private void frmAddTV_Load(object sender, EventArgs e)
        {
            LoadDocGia();
            LoadLoaiThe();
            btnReset_Click(null, null);
        }

        void LoadDocGia()
        {
            dtDocGia = DAO_DocGia.Instance.GetListDocGia(ref daDocGia);
            cbDocGia.DataSource = dtDocGia;
            cbDocGia.DisplayMember = "TenDocGia";
            cbDocGia.ValueMember = "MaDocGia";
            cbDocGia.SelectedIndex = -1;
        }

        void LoadLoaiThe()
        {
            dtLoaiThe = DAO_LoaiThe.Instance.GetListLoaiThe(ref daLoaiThe);
            cbLoaiThe.DataSource = dtLoaiThe;
            cbLoaiThe.DisplayMember = "TenLoaiThe";
            cbLoaiThe.ValueMember = "MaLoaiThe";
            cbLoaiThe.SelectedIndex = -1;
        }

        private void cbLoaiThe_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbLoaiThe.Text == "Thường")
            {
                txtSoTien.Text = "50000";
            }
            else if (cbLoaiThe.Text == "Bạc")
            {
                txtSoTien.Text = "100000";
            }
            else if (cbLoaiThe.Text == "Vàng")
            {
                txtSoTien.Text = "150000";
            }
            else if (cbLoaiThe.Text == "Bạch Kim")
            {
                txtSoTien.Text = "200000";
            }
        }
    }
}
