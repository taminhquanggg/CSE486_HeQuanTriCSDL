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
    public partial class frmTacGia : Form
    {
        public frmTacGia()
        {
            InitializeComponent();
        }
        BindingSource TacGiaList = new BindingSource();

        SqlDataAdapter daTacGia = new SqlDataAdapter();

        private void txtAdd_Click(object sender, EventArgs e)
        {
            frmAddTacGia fAdd = new frmAddTacGia();
            fAdd.ShowDialog();
        }

        private void txtExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmTacGia_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        void LoadData()
        {
            dgvTacGia.AutoGenerateColumns = false;
            dgvTacGia.DataSource = TacGiaList;
            bindingNavigator1.BindingSource = TacGiaList;
            TacGiaList.DataSource = DAO_TacGia.Instance.GetListTacGia(ref daTacGia);
        }
    }
}
