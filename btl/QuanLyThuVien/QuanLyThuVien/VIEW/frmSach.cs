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
    public partial class frmSach : Form
    {
        public frmSach()
        {
            InitializeComponent();
        }

        BindingSource SachList = new BindingSource();

        SqlDataAdapter daSach = new SqlDataAdapter();

        private void txtAdd_Click(object sender, EventArgs e)
        {
            frmAddSach fAdd = new frmAddSach();
            fAdd.ShowDialog();
        }

        private void txtExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmSach_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        public void LoadData() 
        {
            dgvSach.AutoGenerateColumns = false;
            dgvSach.DataSource = SachList;
            bindingNavigator1.BindingSource = SachList;
            SachList.DataSource = DAO_Sach.Instance.GetListSach(ref daSach);
        }
    }
}
