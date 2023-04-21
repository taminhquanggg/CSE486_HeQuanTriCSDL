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

namespace QuanLyThuVien.VIEW
{
    public partial class frmAddDocGia : Form
    {
        public frmAddDocGia()
        {
            InitializeComponent();
        }

        public delegate void RefreshDocGia();
        public RefreshDocGia refreshDocGia;

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            string sex = "";
            if (rbNam.Checked)
            {
                sex = "Nam";
            }
            else if (rbNu.Checked) 
            {
                sex = "Nữ";
            }

            DOC_GIA docgia = new DOC_GIA(txtTenDG.Text, dtNgaySinh.Value, sex, txtSDT.Text, txtDiaChi.Text);
            MessageBox.Show(DAO_DocGia.Instance.AddDocGia(docgia), "Thông báo !!!");

            refreshDocGia();
            btnReset_Click(null, null);
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            txtTenDG.Focus();
            txtTenDG.Text = txtSDT.Text = txtDiaChi.Text = "";
            dtNgaySinh.Value = DateTime.Now;
            rbNam.Checked = false;
            rbNu.Checked = false;
        }
    }
}
