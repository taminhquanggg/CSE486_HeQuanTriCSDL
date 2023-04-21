using CrystalDecisions.CrystalReports.Engine;
using QuanLyThuVien.DAO;
using QuanLyThuVien.Report;
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
    public partial class frmTV : Form
    {
        BindingSource TheTVList = new BindingSource();

        SqlDataAdapter daTheTV = new SqlDataAdapter();

        public frmTV()
        {
            InitializeComponent();
        }

        private void txtAdd_Click(object sender, EventArgs e)
        {
            frmAddTV f = new frmAddTV();
            f.refreshTheTV = new frmAddTV.RefreshTheTV(LoadData);
            f.ShowDialog();
        }

        private void txtExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmTV_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        public void LoadData()
        {
            dgvTV.AutoGenerateColumns = false;
            dgvTV.DataSource = TheTVList;
            bindingNavigator1.BindingSource = TheTVList;
            LoadListTheTV();
        }

        void LoadListTheTV()
        {
            TheTVList.DataSource = DAO_TheTV.Instance.GetListTheTV(ref daTheTV);
        }

        private void txtReset_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void txtDel_Click(object sender, EventArgs e)
        {
            if (dgvTV.RowCount > 0)
            {
                DataGridViewRowCancelEventArgs ee = new DataGridViewRowCancelEventArgs(dgvTV.CurrentRow);
                DeleteTheTV(ee);
            }
        }

        void DeleteTheTV(DataGridViewRowCancelEventArgs e)
        {
            if (dgvTV.RowCount > 0)
            {
                if (MessageBox.Show("Bạn chắc chắn xóa Thành viên này ?", "Thông báo !!!", MessageBoxButtons.YesNo,
                        MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes)
                {
                    MessageBox.Show(DAO_TheTV.Instance.DelTheTV(dgvTV.CurrentRow.Cells["MaThe"].Value.ToString()), "Thông báo !!!");
                    if (DAO_TheTV.Instance.deleted)
                    {
                        dgvTV.Rows.RemoveAt(e.Row.Index);
                    }
                }
            }
        }

        private void txtViewReport_Click(object sender, EventArgs e)
        {
            try
            {
                if (dgvTV.Rows.Count > 0)
                {
                    int id = Int32.Parse(dgvTV.Rows[dgvTV.CurrentRow.Index].Cells["MaThe"].Value.ToString());
                    using (ReportDocument rpclass = new ReportDocument())
                    {
                        rpclass.Load("Report/rptTheTV.rpt");
                        rpclass.SetDataSource(DAO_TheTV.Instance.GetTheTVByID(id));
                        frmReportViewer reportViewer = new frmReportViewer();
                        reportViewer.Report = rpclass;
                        reportViewer.ShowDialog();

                    }

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error !!!");
            }
            
        }

        private void dgvTV_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            TheTVList.EndEdit();
            DataTable dt = (DataTable)TheTVList.DataSource;
            DataTable updateTable = dt.GetChanges();
            int updateRow = daTheTV.Update(dt);
        }
    }
}
