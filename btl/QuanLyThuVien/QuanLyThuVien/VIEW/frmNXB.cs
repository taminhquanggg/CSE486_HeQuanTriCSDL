using QuanLyThuVien.DAO;
using QuanLyThuVien.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVien.VIEW
{
    public partial class frmNXB : Form
    {
        BindingSource NXBList = new BindingSource();

        SqlDataAdapter daNXB = new SqlDataAdapter();

        public frmNXB()
        {
            InitializeComponent();
        }

        private void txtAdd_Click(object sender, EventArgs e)
        {
            frmAddNXB fAdd = new frmAddNXB();
            fAdd.refreshNXB = new frmAddNXB.RefreshNXB(LoadData);
            fAdd.ShowDialog();
        }

        private void txtExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmNXB_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        public void LoadData()
        {
            dgvNXB.AutoGenerateColumns = false;
            dgvNXB.DataSource = NXBList;
            bindingNavigator1.BindingSource = NXBList;
            LoadListNXB();
        }

        void LoadListNXB()
        {
            NXBList.DataSource = DAO_NXB.Instance.GetListNXB(ref daNXB);
        }

        private void txtReset_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void txtDel_Click(object sender, EventArgs e)
        {
            if (dgvNXB.RowCount> 0)
            {
                DataGridViewRowCancelEventArgs ee = new DataGridViewRowCancelEventArgs(dgvNXB.CurrentRow);
                DeleteNXB(ee);
            }
        }

        void DeleteNXB(DataGridViewRowCancelEventArgs e)
        {
            if (dgvNXB.RowCount > 0)
            {
                if (MessageBox.Show("Bạn chắc chắn xóa NXB này ?", "Thông báo !!!", MessageBoxButtons.YesNo,
                        MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes)
                {
                    MessageBox.Show(DAO_NXB.Instance.DelNXB(dgvNXB.CurrentRow.Cells["MaNXB"].Value.ToString()), "Thông báo !!!");
                    if (DAO_NXB.Instance.deleted)
                    {
                        dgvNXB.Rows.RemoveAt(e.Row.Index);
                    }
                }
            }
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            NXBList.DataSource = DAO_NXB.Instance.GetNXBByName(txtSearch.Text, ref daNXB);
        }

        private void dgvNXB_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            NXBList.EndEdit();
            DataTable dt = (DataTable)NXBList.DataSource;
            DataTable updateTable = dt.GetChanges();
            int updateRow = daNXB.Update(dt);
        }
    }
}
