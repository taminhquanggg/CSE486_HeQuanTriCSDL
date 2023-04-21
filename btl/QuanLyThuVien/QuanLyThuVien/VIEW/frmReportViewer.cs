using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Windows.Forms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVien.VIEW
{
    public partial class frmReportViewer : Form
    {

        public ReportDocument Report { get; set; }

        public frmReportViewer()
        {
            InitializeComponent();
        }

        private void frmReportViewer_Load(object sender, EventArgs e)
        {
            try
            {
                crystalReportViewer1.ReportSource = Report;

            }
            catch (Exception ex) 
            {
                MessageBox.Show(ex.Message, "Error !!!");
            }

        }

    }
}
