namespace QuanLyThuVien
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
            this.statusUser = new System.Windows.Forms.ToolStripStatusLabel();
            this.lblDate = new System.Windows.Forms.ToolStripStatusLabel();
            this.lblTime = new System.Windows.Forms.ToolStripStatusLabel();
            this.timerStatus = new System.Windows.Forms.Timer(this.components);
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.mnuHomePage = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMuonTra = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuMuon = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuTra = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuDGTV = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuDocGia = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuThanhVien = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuQLSach = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuSach = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.mnuNXB = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuTacGia = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuTheLoai = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuThongKe = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuExit = new System.Windows.Forms.ToolStripMenuItem();
            this.statusStrip1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1,
            this.statusUser,
            this.lblDate,
            this.lblTime});
            this.statusStrip1.Location = new System.Drawing.Point(0, 727);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Padding = new System.Windows.Forms.Padding(1, 0, 16, 0);
            this.statusStrip1.Size = new System.Drawing.Size(1148, 25);
            this.statusStrip1.TabIndex = 0;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            this.toolStripStatusLabel1.BorderSides = ((System.Windows.Forms.ToolStripStatusLabelBorderSides)((((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left | System.Windows.Forms.ToolStripStatusLabelBorderSides.Top) 
            | System.Windows.Forms.ToolStripStatusLabelBorderSides.Right) 
            | System.Windows.Forms.ToolStripStatusLabelBorderSides.Bottom)));
            this.toolStripStatusLabel1.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            this.toolStripStatusLabel1.Size = new System.Drawing.Size(167, 20);
            this.toolStripStatusLabel1.Text = "Phần mềm quản lý thư viện";
            // 
            // statusUser
            // 
            this.statusUser.BorderSides = ((System.Windows.Forms.ToolStripStatusLabelBorderSides)((((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left | System.Windows.Forms.ToolStripStatusLabelBorderSides.Top) 
            | System.Windows.Forms.ToolStripStatusLabelBorderSides.Right) 
            | System.Windows.Forms.ToolStripStatusLabelBorderSides.Bottom)));
            this.statusUser.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.statusUser.Name = "statusUser";
            this.statusUser.Size = new System.Drawing.Size(78, 20);
            this.statusUser.Text = "Username: ";
            // 
            // lblDate
            // 
            this.lblDate.BorderSides = ((System.Windows.Forms.ToolStripStatusLabelBorderSides)((((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left | System.Windows.Forms.ToolStripStatusLabelBorderSides.Top) 
            | System.Windows.Forms.ToolStripStatusLabelBorderSides.Right) 
            | System.Windows.Forms.ToolStripStatusLabelBorderSides.Bottom)));
            this.lblDate.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDate.Name = "lblDate";
            this.lblDate.Size = new System.Drawing.Size(46, 20);
            this.lblDate.Text = "Date: ";
            // 
            // lblTime
            // 
            this.lblTime.BorderSides = ((System.Windows.Forms.ToolStripStatusLabelBorderSides)((((System.Windows.Forms.ToolStripStatusLabelBorderSides.Left | System.Windows.Forms.ToolStripStatusLabelBorderSides.Top) 
            | System.Windows.Forms.ToolStripStatusLabelBorderSides.Right) 
            | System.Windows.Forms.ToolStripStatusLabelBorderSides.Bottom)));
            this.lblTime.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTime.Name = "lblTime";
            this.lblTime.Size = new System.Drawing.Size(49, 20);
            this.lblTime.Text = "Time: ";
            // 
            // timerStatus
            // 
            this.timerStatus.Interval = 1000;
            this.timerStatus.Tick += new System.EventHandler(this.timerStatus_Tick);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuHomePage,
            this.mnuMuonTra,
            this.mnuDGTV,
            this.mnuQLSach,
            this.mnuThongKe,
            this.mnuExit});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Padding = new System.Windows.Forms.Padding(7, 2, 0, 2);
            this.menuStrip1.Size = new System.Drawing.Size(1148, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // mnuHomePage
            // 
            this.mnuHomePage.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mnuHomePage.Name = "mnuHomePage";
            this.mnuHomePage.Size = new System.Drawing.Size(105, 20);
            this.mnuHomePage.Text = "Màn hình chính";
            this.mnuHomePage.Visible = false;
            this.mnuHomePage.Click += new System.EventHandler(this.mnuHomePage_Click);
            // 
            // mnuMuonTra
            // 
            this.mnuMuonTra.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuMuon,
            this.mnuTra});
            this.mnuMuonTra.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mnuMuonTra.Name = "mnuMuonTra";
            this.mnuMuonTra.Size = new System.Drawing.Size(103, 20);
            this.mnuMuonTra.Text = "QL Mượn - Trả";
            // 
            // mnuMuon
            // 
            this.mnuMuon.Name = "mnuMuon";
            this.mnuMuon.Size = new System.Drawing.Size(125, 22);
            this.mnuMuon.Text = "QL Mượn";
            this.mnuMuon.Click += new System.EventHandler(this.mnuMuon_Click);
            // 
            // mnuTra
            // 
            this.mnuTra.Name = "mnuTra";
            this.mnuTra.Size = new System.Drawing.Size(125, 22);
            this.mnuTra.Text = "QL Trả";
            this.mnuTra.Click += new System.EventHandler(this.mnuTra_Click);
            // 
            // mnuDGTV
            // 
            this.mnuDGTV.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuDocGia,
            this.mnuThanhVien});
            this.mnuDGTV.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mnuDGTV.Name = "mnuDGTV";
            this.mnuDGTV.Size = new System.Drawing.Size(157, 20);
            this.mnuDGTV.Text = "QL Độc giả - Thành viên";
            // 
            // mnuDocGia
            // 
            this.mnuDocGia.Name = "mnuDocGia";
            this.mnuDocGia.Size = new System.Drawing.Size(156, 22);
            this.mnuDocGia.Text = "QL Độc giả";
            this.mnuDocGia.Click += new System.EventHandler(this.mnuDocGia_Click);
            // 
            // mnuThanhVien
            // 
            this.mnuThanhVien.Name = "mnuThanhVien";
            this.mnuThanhVien.Size = new System.Drawing.Size(156, 22);
            this.mnuThanhVien.Text = "QL Thành viên";
            this.mnuThanhVien.Click += new System.EventHandler(this.mnuThanhVien_Click);
            // 
            // mnuQLSach
            // 
            this.mnuQLSach.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuSach,
            this.toolStripSeparator1,
            this.mnuNXB,
            this.mnuTacGia,
            this.mnuTheLoai});
            this.mnuQLSach.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mnuQLSach.Name = "mnuQLSach";
            this.mnuQLSach.Size = new System.Drawing.Size(66, 20);
            this.mnuQLSach.Text = "QL Sách";
            // 
            // mnuSach
            // 
            this.mnuSach.Name = "mnuSach";
            this.mnuSach.Size = new System.Drawing.Size(169, 22);
            this.mnuSach.Text = "QL Sách";
            this.mnuSach.Click += new System.EventHandler(this.mnuSach_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(166, 6);
            // 
            // mnuNXB
            // 
            this.mnuNXB.Name = "mnuNXB";
            this.mnuNXB.Size = new System.Drawing.Size(169, 22);
            this.mnuNXB.Text = "QL Nhà xuất bản";
            this.mnuNXB.Click += new System.EventHandler(this.mnuNXB_Click);
            // 
            // mnuTacGia
            // 
            this.mnuTacGia.Name = "mnuTacGia";
            this.mnuTacGia.Size = new System.Drawing.Size(169, 22);
            this.mnuTacGia.Text = "QL Tác giả";
            this.mnuTacGia.Click += new System.EventHandler(this.mnuTacGia_Click);
            // 
            // mnuTheLoai
            // 
            this.mnuTheLoai.Name = "mnuTheLoai";
            this.mnuTheLoai.Size = new System.Drawing.Size(169, 22);
            this.mnuTheLoai.Text = "QL Thể loại sách";
            this.mnuTheLoai.Click += new System.EventHandler(this.mnuTheLoai_Click);
            // 
            // mnuThongKe
            // 
            this.mnuThongKe.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mnuThongKe.Name = "mnuThongKe";
            this.mnuThongKe.Size = new System.Drawing.Size(72, 20);
            this.mnuThongKe.Text = "Thống kê";
            this.mnuThongKe.Visible = false;
            // 
            // mnuExit
            // 
            this.mnuExit.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mnuExit.Name = "mnuExit";
            this.mnuExit.Size = new System.Drawing.Size(52, 20);
            this.mnuExit.Text = "Thoát";
            this.mnuExit.Click += new System.EventHandler(this.mnuExit_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1148, 752);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.menuStrip1);
            this.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "QUẢN LÝ THƯ VIỆN";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmMain_FormClosing);
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
        private System.Windows.Forms.ToolStripStatusLabel statusUser;
        private System.Windows.Forms.ToolStripStatusLabel lblDate;
        private System.Windows.Forms.ToolStripStatusLabel lblTime;
        private System.Windows.Forms.Timer timerStatus;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem mnuHomePage;
        private System.Windows.Forms.ToolStripMenuItem mnuMuonTra;
        private System.Windows.Forms.ToolStripMenuItem mnuMuon;
        private System.Windows.Forms.ToolStripMenuItem mnuTra;
        private System.Windows.Forms.ToolStripMenuItem mnuDGTV;
        private System.Windows.Forms.ToolStripMenuItem mnuDocGia;
        private System.Windows.Forms.ToolStripMenuItem mnuThanhVien;
        private System.Windows.Forms.ToolStripMenuItem mnuQLSach;
        private System.Windows.Forms.ToolStripMenuItem mnuSach;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem mnuNXB;
        private System.Windows.Forms.ToolStripMenuItem mnuTacGia;
        private System.Windows.Forms.ToolStripMenuItem mnuTheLoai;
        private System.Windows.Forms.ToolStripMenuItem mnuThongKe;
        private System.Windows.Forms.ToolStripMenuItem mnuExit;
    }
}