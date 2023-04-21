using System;
using QuanLyThuVien.DAO;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyThuVien.DTO;

namespace QuanLyThuVien.VIEW
{
    public partial class frmAddNXB : Form
    {
        public frmAddNXB()
        {
            InitializeComponent();
        }

        public delegate void RefreshNXB();
        public RefreshNXB refreshNXB;

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            NHA_XUAT_BAN nhaxuatban = new NHA_XUAT_BAN(txtTenNXB.Text, txtSDT.Text, txtDiaChi.Text);
            MessageBox.Show(DAO_NXB.Instance.AddNXB(nhaxuatban), "Thông báo !!!");
            
            refreshNXB();
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            txtTenNXB.Focus();
            txtTenNXB.Text = txtSDT.Text = txtDiaChi.Text = "";
        }
    }
}
