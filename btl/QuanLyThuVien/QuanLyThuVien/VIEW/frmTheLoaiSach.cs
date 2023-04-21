using QuanLyThuVien.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVien.VIEW
{
    public partial class frmTheLoaiSach : Form
    {
        public frmTheLoaiSach()
        {
            InitializeComponent();
        }
        BindingSource TheLoaiList = new BindingSource();

        SqlDataAdapter daTheLoai = new SqlDataAdapter();

        private void txtAdd_Click(object sender, EventArgs e)
        {
            frmAddTheLoai fAdd = new frmAddTheLoai();
            fAdd.ShowDialog();
        }

        private void txtExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmTheLoaiSach_Load(object sender, EventArgs e)
        {
            LoadData();

        }

        void LoadData()
        {
            dgvTheLoai.AutoGenerateColumns = false;
            dgvTheLoai.DataSource = TheLoaiList;
            bindingNavigator1.BindingSource = TheLoaiList;
            TheLoaiList.DataSource = DAO_TheLoaiSach.Instance.GetListTheLoai(ref daTheLoai);
        }
    }
}
