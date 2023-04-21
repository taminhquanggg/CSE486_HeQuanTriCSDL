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
    public partial class FrmDocGia : Form
    {
        public FrmDocGia()
        {
            InitializeComponent();
        }

        BindingSource DocGiaList = new BindingSource();
        SqlDataAdapter daDocGia = new SqlDataAdapter();

        private void txtAdd_Click(object sender, EventArgs e)
        {
            frmAddDocGia fAdd = new frmAddDocGia();
            fAdd.refreshDocGia = new frmAddDocGia.RefreshDocGia(LoadData);
            fAdd.ShowDialog();
        }

        private void txtExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void FrmDocGia_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        public void LoadData()
        {
            dgvDocGia.AutoGenerateColumns = false;
            dgvDocGia.DataSource = DocGiaList;
            bindingNavigator1.BindingSource = DocGiaList;
            LoadListDocGia();
        }

        void LoadListDocGia()
        {
            DocGiaList.DataSource = DAO_DocGia.Instance.GetListDocGia(ref daDocGia);
        }

        private void txtReset_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void txtDel_Click(object sender, EventArgs e)
        {
            if (dgvDocGia.RowCount> 0)
            {
                DataGridViewRowCancelEventArgs ee = new DataGridViewRowCancelEventArgs(dgvDocGia.CurrentRow);
                DeleteNXB(ee);
            }
        }

        void DeleteNXB(DataGridViewRowCancelEventArgs e)
        {
            if (dgvDocGia.RowCount > 0)
            {
                if (MessageBox.Show("Bạn chắc chắn xóa Độc gải này ?", "Thông báo !!!", MessageBoxButtons.YesNo,
                        MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes)
                {
                    MessageBox.Show(DAO_DocGia.Instance.DelDocGia(dgvDocGia.CurrentRow.Cells["MaDocGia"].Value.ToString()), "Thông báo !!!");
                    if (DAO_DocGia.Instance.deleted)
                    {
                        dgvDocGia.Rows.RemoveAt(e.Row.Index);
                    }
                }
            }
        }



        private void dgvDocGia_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            DocGiaList.EndEdit();
            DataTable dt = (DataTable)DocGiaList.DataSource;
            DataTable updateTable = dt.GetChanges();
            int updateRow = daDocGia.Update(dt);
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            DocGiaList.DataSource = DAO_DocGia.Instance.GetDocGiaByName(txtSearch.Text, ref daDocGia);
        }
    }
}
