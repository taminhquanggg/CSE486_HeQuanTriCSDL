namespace QuanLyThuVien.VIEW
{
    partial class frmAddTV
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtSoTien = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.dtNgayHetHan = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.dtNgayCap = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.btnSearch = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnReset = new System.Windows.Forms.Button();
            this.btnAdd = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.cbLoaiThe = new MultiColumnComboBox.MultiColumnComboBox();
            this.cbDocGia = new MultiColumnComboBox.MultiColumnComboBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.txtSoTien);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.dtNgayHetHan);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.dtNgayCap);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.cbLoaiThe);
            this.groupBox1.Controls.Add(this.btnSearch);
            this.groupBox1.Controls.Add(this.cbDocGia);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(6, 5);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(365, 232);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thêm mới thành viên";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(300, 192);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(34, 16);
            this.label6.TabIndex = 20;
            this.label6.Text = "VNĐ";
            // 
            // txtSoTien
            // 
            this.txtSoTien.Location = new System.Drawing.Point(130, 189);
            this.txtSoTien.Name = "txtSoTien";
            this.txtSoTien.ReadOnly = true;
            this.txtSoTien.Size = new System.Drawing.Size(164, 23);
            this.txtSoTien.TabIndex = 19;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(27, 192);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(96, 16);
            this.label5.TabIndex = 18;
            this.label5.Text = "Số tiền cần nạp";
            // 
            // dtNgayHetHan
            // 
            this.dtNgayHetHan.CustomFormat = "dd/MM/yyyy";
            this.dtNgayHetHan.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtNgayHetHan.Location = new System.Drawing.Point(130, 150);
            this.dtNgayHetHan.Name = "dtNgayHetHan";
            this.dtNgayHetHan.Size = new System.Drawing.Size(164, 23);
            this.dtNgayHetHan.TabIndex = 17;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(27, 153);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(82, 16);
            this.label4.TabIndex = 16;
            this.label4.Text = "Ngày hết hạn";
            // 
            // dtNgayCap
            // 
            this.dtNgayCap.CustomFormat = "dd/MM/yyyy";
            this.dtNgayCap.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtNgayCap.Location = new System.Drawing.Point(130, 111);
            this.dtNgayCap.Name = "dtNgayCap";
            this.dtNgayCap.Size = new System.Drawing.Size(164, 23);
            this.dtNgayCap.TabIndex = 15;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(27, 114);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(59, 16);
            this.label3.TabIndex = 14;
            this.label3.Text = "Ngày cấp";
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(300, 33);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(31, 23);
            this.btnSearch.TabIndex = 12;
            this.btnSearch.Text = "...";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Visible = false;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(27, 75);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(52, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "Loại thẻ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(27, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Độc giả";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnReset);
            this.groupBox2.Controls.Add(this.btnAdd);
            this.groupBox2.Controls.Add(this.btnExit);
            this.groupBox2.Location = new System.Drawing.Point(6, 243);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(364, 79);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            // 
            // btnReset
            // 
            this.btnReset.Location = new System.Drawing.Point(265, 19);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(93, 42);
            this.btnReset.TabIndex = 2;
            this.btnReset.Text = "Làm mới";
            this.btnReset.UseVisualStyleBackColor = true;
            this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(136, 19);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(93, 42);
            this.btnAdd.TabIndex = 1;
            this.btnAdd.Text = "Thêm";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(7, 19);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(93, 42);
            this.btnExit.TabIndex = 0;
            this.btnExit.Text = "Quay về";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // cbLoaiThe
            // 
            this.cbLoaiThe.AutoComplete = false;
            this.cbLoaiThe.AutoDropdown = false;
            this.cbLoaiThe.BackColorEven = System.Drawing.Color.White;
            this.cbLoaiThe.BackColorOdd = System.Drawing.Color.LightBlue;
            this.cbLoaiThe.ColumnNames = "MaLoaiThe,TenLoaiThe,MucGiamGia";
            this.cbLoaiThe.ColumnWidthDefault = 75;
            this.cbLoaiThe.ColumnWidths = "35,180";
            this.cbLoaiThe.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbLoaiThe.FormattingEnabled = true;
            this.cbLoaiThe.LinkedColumnIndex = 0;
            this.cbLoaiThe.LinkedTextBox = null;
            this.cbLoaiThe.Location = new System.Drawing.Point(130, 71);
            this.cbLoaiThe.Name = "cbLoaiThe";
            this.cbLoaiThe.Size = new System.Drawing.Size(201, 24);
            this.cbLoaiThe.TabIndex = 13;
            this.cbLoaiThe.SelectedIndexChanged += new System.EventHandler(this.cbLoaiThe_SelectedIndexChanged);
            // 
            // cbDocGia
            // 
            this.cbDocGia.AutoComplete = false;
            this.cbDocGia.AutoDropdown = false;
            this.cbDocGia.BackColorEven = System.Drawing.Color.White;
            this.cbDocGia.BackColorOdd = System.Drawing.Color.LightBlue;
            this.cbDocGia.ColumnNames = "MaDocGia,TenDocGia";
            this.cbDocGia.ColumnWidthDefault = 75;
            this.cbDocGia.ColumnWidths = "35,180";
            this.cbDocGia.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbDocGia.FormattingEnabled = true;
            this.cbDocGia.LinkedColumnIndex = 0;
            this.cbDocGia.LinkedTextBox = null;
            this.cbDocGia.Location = new System.Drawing.Point(130, 32);
            this.cbDocGia.Name = "cbDocGia";
            this.cbDocGia.Size = new System.Drawing.Size(164, 24);
            this.cbDocGia.TabIndex = 11;
            // 
            // frmAddTV
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(244)))), ((int)(((byte)(237)))));
            this.ClientSize = new System.Drawing.Size(365, 317);
            this.ControlBox = false;
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmAddTV";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Thêm mới thành viên";
            this.Load += new System.EventHandler(this.frmAddTV_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnReset;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtSoTien;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DateTimePicker dtNgayHetHan;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker dtNgayCap;
        private System.Windows.Forms.Label label3;
        private MultiColumnComboBox.MultiColumnComboBox cbLoaiThe;
        private System.Windows.Forms.Button btnSearch;
        private MultiColumnComboBox.MultiColumnComboBox cbDocGia;
    }
}