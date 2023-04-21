namespace QuanLyThuVien.VIEW
{
    partial class frmAddSach
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
            this.txtGiaMuon = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label9 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnReset = new System.Windows.Forms.Button();
            this.btnAdd = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.nudSL = new System.Windows.Forms.NumericUpDown();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtNamXB = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtNoiDung = new System.Windows.Forms.TextBox();
            this.txtTenSach = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cboNXB = new MultiColumnComboBox.MultiColumnComboBox();
            this.cboTacGia = new MultiColumnComboBox.MultiColumnComboBox();
            this.cboTheLoai = new MultiColumnComboBox.MultiColumnComboBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudSL)).BeginInit();
            this.SuspendLayout();
            // 
            // txtGiaMuon
            // 
            this.txtGiaMuon.Location = new System.Drawing.Point(130, 159);
            this.txtGiaMuon.Name = "txtGiaMuon";
            this.txtGiaMuon.Size = new System.Drawing.Size(167, 23);
            this.txtGiaMuon.TabIndex = 9;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cboNXB);
            this.groupBox1.Controls.Add(this.cboTacGia);
            this.groupBox1.Controls.Add(this.cboTheLoai);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.groupBox2);
            this.groupBox1.Controls.Add(this.nudSL);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.txtNamXB);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.txtNoiDung);
            this.groupBox1.Controls.Add(this.txtGiaMuon);
            this.groupBox1.Controls.Add(this.txtTenSach);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(680, 283);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thêm mới sách";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Tahoma", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(303, 162);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(34, 16);
            this.label9.TabIndex = 19;
            this.label9.Text = "VNĐ";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnReset);
            this.groupBox2.Controls.Add(this.btnAdd);
            this.groupBox2.Controls.Add(this.btnExit);
            this.groupBox2.Location = new System.Drawing.Point(361, 186);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(310, 79);
            this.groupBox2.TabIndex = 14;
            this.groupBox2.TabStop = false;
            // 
            // btnReset
            // 
            this.btnReset.Location = new System.Drawing.Point(210, 22);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(93, 42);
            this.btnReset.TabIndex = 2;
            this.btnReset.Text = "Làm mới";
            this.btnReset.UseVisualStyleBackColor = true;
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(108, 22);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(93, 42);
            this.btnAdd.TabIndex = 1;
            this.btnAdd.Text = "Thêm";
            this.btnAdd.UseVisualStyleBackColor = true;
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(6, 22);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(93, 42);
            this.btnExit.TabIndex = 0;
            this.btnExit.Text = "Quay về";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // nudSL
            // 
            this.nudSL.Location = new System.Drawing.Point(130, 117);
            this.nudSL.Name = "nudSL";
            this.nudSL.Size = new System.Drawing.Size(120, 23);
            this.nudSL.TabIndex = 8;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(382, 120);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(82, 16);
            this.label8.TabIndex = 16;
            this.label8.Text = "Nhà xuất bản";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(382, 78);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(49, 16);
            this.label7.TabIndex = 14;
            this.label7.Text = "Tác giả";
            // 
            // txtNamXB
            // 
            this.txtNamXB.Location = new System.Drawing.Point(130, 75);
            this.txtNamXB.Name = "txtNamXB";
            this.txtNamXB.Size = new System.Drawing.Size(201, 23);
            this.txtNamXB.TabIndex = 7;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(382, 36);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(53, 16);
            this.label6.TabIndex = 11;
            this.label6.Text = "Thể loại";
            // 
            // txtNoiDung
            // 
            this.txtNoiDung.Location = new System.Drawing.Point(130, 204);
            this.txtNoiDung.Multiline = true;
            this.txtNoiDung.Name = "txtNoiDung";
            this.txtNoiDung.Size = new System.Drawing.Size(201, 61);
            this.txtNoiDung.TabIndex = 10;
            // 
            // txtTenSach
            // 
            this.txtTenSach.Location = new System.Drawing.Point(130, 33);
            this.txtTenSach.Name = "txtTenSach";
            this.txtTenSach.Size = new System.Drawing.Size(201, 23);
            this.txtTenSach.TabIndex = 6;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(27, 204);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(87, 16);
            this.label5.TabIndex = 4;
            this.label5.Text = "Nội dung sách";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(27, 162);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(62, 16);
            this.label4.TabIndex = 3;
            this.label4.Text = "Giá mượn";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(27, 120);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(88, 16);
            this.label3.TabIndex = 2;
            this.label3.Text = "Số lượng sách";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(27, 78);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(86, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "Năm xuất bản";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(27, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tên sách";
            // 
            // cboNXB
            // 
            this.cboNXB.AutoComplete = false;
            this.cboNXB.AutoDropdown = false;
            this.cboNXB.BackColorEven = System.Drawing.Color.White;
            this.cboNXB.BackColorOdd = System.Drawing.Color.LightBlue;
            this.cboNXB.ColumnNames = "";
            this.cboNXB.ColumnWidthDefault = 75;
            this.cboNXB.ColumnWidths = "";
            this.cboNXB.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cboNXB.FormattingEnabled = true;
            this.cboNXB.LinkedColumnIndex = 0;
            this.cboNXB.LinkedTextBox = null;
            this.cboNXB.Location = new System.Drawing.Point(469, 116);
            this.cboNXB.Name = "cboNXB";
            this.cboNXB.Size = new System.Drawing.Size(195, 24);
            this.cboNXB.TabIndex = 13;
            // 
            // cboTacGia
            // 
            this.cboTacGia.AutoComplete = false;
            this.cboTacGia.AutoDropdown = false;
            this.cboTacGia.BackColorEven = System.Drawing.Color.White;
            this.cboTacGia.BackColorOdd = System.Drawing.Color.LightBlue;
            this.cboTacGia.ColumnNames = "";
            this.cboTacGia.ColumnWidthDefault = 75;
            this.cboTacGia.ColumnWidths = "";
            this.cboTacGia.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cboTacGia.FormattingEnabled = true;
            this.cboTacGia.LinkedColumnIndex = 0;
            this.cboTacGia.LinkedTextBox = null;
            this.cboTacGia.Location = new System.Drawing.Point(469, 74);
            this.cboTacGia.Name = "cboTacGia";
            this.cboTacGia.Size = new System.Drawing.Size(195, 24);
            this.cboTacGia.TabIndex = 12;
            // 
            // cboTheLoai
            // 
            this.cboTheLoai.AutoComplete = false;
            this.cboTheLoai.AutoDropdown = false;
            this.cboTheLoai.BackColorEven = System.Drawing.Color.White;
            this.cboTheLoai.BackColorOdd = System.Drawing.Color.LightBlue;
            this.cboTheLoai.ColumnNames = "";
            this.cboTheLoai.ColumnWidthDefault = 75;
            this.cboTheLoai.ColumnWidths = "";
            this.cboTheLoai.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cboTheLoai.FormattingEnabled = true;
            this.cboTheLoai.LinkedColumnIndex = 0;
            this.cboTheLoai.LinkedTextBox = null;
            this.cboTheLoai.Location = new System.Drawing.Point(469, 32);
            this.cboTheLoai.Name = "cboTheLoai";
            this.cboTheLoai.Size = new System.Drawing.Size(195, 24);
            this.cboTheLoai.TabIndex = 11;
            // 
            // frmAddSach
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(244)))), ((int)(((byte)(237)))));
            this.ClientSize = new System.Drawing.Size(696, 297);
            this.ControlBox = false;
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "frmAddSach";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Thêm mới sách";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.nudSL)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TextBox txtGiaMuon;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnReset;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.NumericUpDown nudSL;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtNamXB;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtNoiDung;
        private System.Windows.Forms.TextBox txtTenSach;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private MultiColumnComboBox.MultiColumnComboBox cboTheLoai;
        private MultiColumnComboBox.MultiColumnComboBox cboNXB;
        private MultiColumnComboBox.MultiColumnComboBox cboTacGia;
    }
}