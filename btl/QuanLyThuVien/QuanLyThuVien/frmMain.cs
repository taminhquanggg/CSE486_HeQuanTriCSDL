using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock;
using QuanLyThuVien.VIEW;
using Microsoft.VisualBasic.ApplicationServices;

namespace QuanLyThuVien
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private static string strUserName;
        public static string UserName
        {
            get { return strUserName; }
            set { strUserName = value; }
        }

        public void GetUser(bool f)
        {
            statusUser.Text = "User name: " + strUserName;
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            try
            {
                //Status(false);
                GetUser(true);
                timerStatus.Start();

                lblDate.Text += DateTime.Now.ToString("dd/MM/yyyy");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error !!!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }

        public void Status(bool Bln)
        {
            mnuMuonTra.Enabled= Bln;
            mnuDGTV.Enabled= Bln;
            mnuQLSach.Enabled= Bln;
            mnuThongKe.Enabled= Bln;
        }

        public void ShowForm(Form frm)
        {
            if (frm.Name != "FrmParent")
            {
                foreach (Form f in MdiChildren)
                {

                    if (f.Name.Equals(frm.Name))
                    {
                        f.Visible = false;
                        f.Activate();
                        f.WindowState = FormWindowState.Maximized;
                        f.Visible = true;
                        return;
                    }
                }
                frm.MdiParent = this;
                frm.Show();
                frm.WindowState = FormWindowState.Maximized;
            }


        }

        private void timerStatus_Tick(object sender, EventArgs e)
        {
            lblTime.Text = "Time: " + DateTime.Now.ToString("hh:mm:ss tt");
        }

        private void mnuMuon_Click(object sender, EventArgs e)
        {
            frmMuonSach f = new frmMuonSach();
            ShowForm(f);
        }

        private void mnuTra_Click(object sender, EventArgs e)
        {
            frmTraSach f = new frmTraSach();
            ShowForm(f);
        }

        private void mnuDocGia_Click(object sender, EventArgs e)
        {
            FrmDocGia f = new FrmDocGia();
            ShowForm(f);
        }

        private void mnuThanhVien_Click(object sender, EventArgs e)
        {
            frmTV f = new frmTV();
            ShowForm(f);
        }

        private void mnuSach_Click(object sender, EventArgs e)
        {
            frmSach f = new frmSach();
            ShowForm(f);
        }

        private void mnuNXB_Click(object sender, EventArgs e)
        {
            frmNXB f = new frmNXB();
            ShowForm(f);
        }

        private void mnuTacGia_Click(object sender, EventArgs e)
        {
            frmTacGia f = new frmTacGia();
            ShowForm(f);
        }

        private void mnuTheLoai_Click(object sender, EventArgs e)
        {
            frmTheLoaiSach f = new frmTheLoaiSach();
            ShowForm(f);
        }

        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult MS = MessageBox.Show("Bạn chắc chắn thoát khỏi chương trình ?", "Cảnh báo !", MessageBoxButtons.YesNo, MessageBoxIcon.Question,
                    MessageBoxDefaultButton.Button2);

            if (MS == DialogResult.No) e.Cancel = true;
        }

        private void mnuExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void mnuHomePage_Click(object sender, EventArgs e)
        {
            frmStartup f = new frmStartup();
            ShowForm(f);
        }
    }
}
