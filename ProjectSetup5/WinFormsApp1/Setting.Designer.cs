namespace WinFormsApp1
{
    partial class Setting
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
            drgViewTables = new DataGridView();
            btnCreate = new Button();
            btnCreateDB = new Button();
            btnbacup = new Button();
            btnRestore = new Button();
            rdChema = new RadioButton();
            rdData = new RadioButton();
            btnExit = new Button();
            button2 = new Button();
            lblTables = new Label();
            chkAll = new CheckBox();
            prgBar = new ProgressBar();
            lblset = new Label();
            btn = new Button();
            ipcnn = new TextBox();
            lblip = new Label();
            portcnn = new TextBox();
            idcnn = new TextBox();
            passwordcnn = new TextBox();
            lblport = new Label();
            lblid = new Label();
            lblpassword = new Label();
            ipcustomer = new TextBox();
            portcustomer = new TextBox();
            idcustomer = new TextBox();
            passwordcustomer = new TextBox();
            lblipcustomer = new Label();
            lblportcustomer = new Label();
            lblidcustomer = new Label();
            lblpasscustomer = new Label();
            ((System.ComponentModel.ISupportInitialize)drgViewTables).BeginInit();
            SuspendLayout();
            // 
            // drgViewTables
            // 
            drgViewTables.AllowUserToAddRows = false;
            drgViewTables.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            drgViewTables.Location = new Point(30, 54);
            drgViewTables.Name = "drgViewTables";
            drgViewTables.RowHeadersWidth = 62;
            drgViewTables.RowTemplate.Height = 33;
            drgViewTables.Size = new Size(1111, 544);
            drgViewTables.TabIndex = 0;
            // 
            // btnCreate
            // 
            btnCreate.Location = new Point(195, 685);
            btnCreate.Name = "btnCreate";
            btnCreate.Size = new Size(149, 46);
            btnCreate.TabIndex = 1;
            btnCreate.Text = "Table List";
            btnCreate.UseVisualStyleBackColor = true;
            btnCreate.Click += btnCreate_Click;
            // 
            // btnCreateDB
            // 
            btnCreateDB.BackColor = SystemColors.Control;
            btnCreateDB.Location = new Point(28, 685);
            btnCreateDB.Name = "btnCreateDB";
            btnCreateDB.Size = new Size(152, 46);
            btnCreateDB.TabIndex = 2;
            btnCreateDB.Text = "Create DB";
            btnCreateDB.UseVisualStyleBackColor = false;
            btnCreateDB.Click += button1_Click;
            // 
            // btnbacup
            // 
            btnbacup.Location = new Point(365, 685);
            btnbacup.Name = "btnbacup";
            btnbacup.Size = new Size(123, 46);
            btnbacup.TabIndex = 3;
            btnbacup.Text = "Backup";
            btnbacup.UseVisualStyleBackColor = true;
            btnbacup.Click += btnbacup_Click;
            // 
            // btnRestore
            // 
            btnRestore.BackColor = SystemColors.ButtonFace;
            btnRestore.Location = new Point(510, 685);
            btnRestore.Name = "btnRestore";
            btnRestore.Size = new Size(136, 46);
            btnRestore.TabIndex = 4;
            btnRestore.Text = "Restore";
            btnRestore.UseVisualStyleBackColor = false;
            btnRestore.Click += btnRestore_Click;
            // 
            // rdChema
            // 
            rdChema.AutoSize = true;
            rdChema.Location = new Point(27, 642);
            rdChema.Name = "rdChema";
            rdChema.Size = new Size(243, 29);
            rdChema.TabIndex = 5;
            rdChema.TabStop = true;
            rdChema.Text = "Customer1 (With Schema)";
            rdChema.UseVisualStyleBackColor = true;
            // 
            // rdData
            // 
            rdData.AutoSize = true;
            rdData.Location = new Point(429, 642);
            rdData.Name = "rdData";
            rdData.Size = new Size(218, 29);
            rdData.TabIndex = 6;
            rdData.TabStop = true;
            rdData.Text = "Customer2 (With Data)";
            rdData.UseVisualStyleBackColor = true;
            // 
            // btnExit
            // 
            btnExit.BackColor = SystemColors.Control;
            btnExit.Location = new Point(1014, 685);
            btnExit.Name = "btnExit";
            btnExit.Size = new Size(127, 44);
            btnExit.TabIndex = 7;
            btnExit.Text = "Exit";
            btnExit.UseVisualStyleBackColor = false;
            btnExit.Click += button1_Click_1;
            // 
            // button2
            // 
            button2.BackColor = Color.Gainsboro;
            button2.Location = new Point(875, 685);
            button2.Name = "button2";
            button2.Size = new Size(119, 44);
            button2.TabIndex = 8;
            button2.Text = "DeleteDB";
            button2.UseVisualStyleBackColor = false;
            button2.Click += button2_Click;
            // 
            // lblTables
            // 
            lblTables.AutoSize = true;
            lblTables.ForeColor = Color.DimGray;
            lblTables.Location = new Point(31, 14);
            lblTables.Name = "lblTables";
            lblTables.Size = new Size(0, 25);
            lblTables.TabIndex = 9;
            // 
            // chkAll
            // 
            chkAll.AutoSize = true;
            chkAll.Location = new Point(1025, 643);
            chkAll.Name = "chkAll";
            chkAll.Size = new Size(115, 29);
            chkAll.TabIndex = 10;
            chkAll.Text = "check ALL";
            chkAll.UseVisualStyleBackColor = true;
            chkAll.CheckedChanged += chkAll_CheckedChanged;
            // 
            // prgBar
            // 
            prgBar.Location = new Point(30, 604);
            prgBar.Name = "prgBar";
            prgBar.Size = new Size(1111, 15);
            prgBar.TabIndex = 11;
            // 
            // lblset
            // 
            lblset.AutoSize = true;
            lblset.BackColor = Color.Gainsboro;
            lblset.ForeColor = Color.IndianRed;
            lblset.Location = new Point(31, 576);
            lblset.Name = "lblset";
            lblset.Size = new Size(0, 25);
            lblset.TabIndex = 12;
            // 
            // btn
            // 
            btn.Location = new Point(719, 685);
            btn.Name = "btn";
            btn.Size = new Size(137, 46);
            btn.TabIndex = 13;
            btn.Text = "Log File";
            btn.UseVisualStyleBackColor = true;
            btn.Visible = false;
            btn.Click += btn_Click;
            // 
            // ipcnn
            // 
            ipcnn.Location = new Point(1264, 61);
            ipcnn.Name = "ipcnn";
            ipcnn.Size = new Size(194, 31);
            ipcnn.TabIndex = 14;
            ipcnn.Text = "192.168.1.22";
            // 
            // lblip
            // 
            lblip.AutoSize = true;
            lblip.Location = new Point(1226, 64);
            lblip.Name = "lblip";
            lblip.Size = new Size(27, 25);
            lblip.TabIndex = 15;
            lblip.Text = "IP";
            // 
            // portcnn
            // 
            portcnn.Location = new Point(1264, 112);
            portcnn.Name = "portcnn";
            portcnn.Size = new Size(194, 31);
            portcnn.TabIndex = 14;
            portcnn.Text = "5732";
            // 
            // idcnn
            // 
            idcnn.Location = new Point(1264, 168);
            idcnn.Name = "idcnn";
            idcnn.Size = new Size(194, 31);
            idcnn.TabIndex = 14;
            idcnn.Text = "postgres";
            // 
            // passwordcnn
            // 
            passwordcnn.Location = new Point(1264, 225);
            passwordcnn.Name = "passwordcnn";
            passwordcnn.Size = new Size(194, 31);
            passwordcnn.TabIndex = 14;
            passwordcnn.Text = "12345678";
            // 
            // lblport
            // 
            lblport.AutoSize = true;
            lblport.Location = new Point(1208, 115);
            lblport.Name = "lblport";
            lblport.Size = new Size(44, 25);
            lblport.TabIndex = 15;
            lblport.Text = "Port";
            // 
            // lblid
            // 
            lblid.AutoSize = true;
            lblid.Location = new Point(1226, 174);
            lblid.Name = "lblid";
            lblid.Size = new Size(30, 25);
            lblid.TabIndex = 15;
            lblid.Text = "ID";
            // 
            // lblpassword
            // 
            lblpassword.AutoSize = true;
            lblpassword.Location = new Point(1170, 231);
            lblpassword.Name = "lblpassword";
            lblpassword.Size = new Size(87, 25);
            lblpassword.TabIndex = 15;
            lblpassword.Text = "Password";
            // 
            // ipcustomer
            // 
            ipcustomer.Location = new Point(1264, 400);
            ipcustomer.Name = "ipcustomer";
            ipcustomer.Size = new Size(194, 31);
            ipcustomer.TabIndex = 14;
            ipcustomer.Text = "127.0.0.1";
            // 
            // portcustomer
            // 
            portcustomer.Location = new Point(1264, 451);
            portcustomer.Name = "portcustomer";
            portcustomer.Size = new Size(194, 31);
            portcustomer.TabIndex = 14;
            portcustomer.Text = "5432";
            // 
            // idcustomer
            // 
            idcustomer.Location = new Point(1264, 507);
            idcustomer.Name = "idcustomer";
            idcustomer.Size = new Size(194, 31);
            idcustomer.TabIndex = 14;
            idcustomer.Text = "postgres";
            // 
            // passwordcustomer
            // 
            passwordcustomer.Location = new Point(1264, 564);
            passwordcustomer.Name = "passwordcustomer";
            passwordcustomer.Size = new Size(194, 31);
            passwordcustomer.TabIndex = 14;
            passwordcustomer.Text = "1234";
            // 
            // lblipcustomer
            // 
            lblipcustomer.AutoSize = true;
            lblipcustomer.Location = new Point(1226, 403);
            lblipcustomer.Name = "lblipcustomer";
            lblipcustomer.Size = new Size(27, 25);
            lblipcustomer.TabIndex = 15;
            lblipcustomer.Text = "IP";
            // 
            // lblportcustomer
            // 
            lblportcustomer.AutoSize = true;
            lblportcustomer.Location = new Point(1208, 454);
            lblportcustomer.Name = "lblportcustomer";
            lblportcustomer.Size = new Size(44, 25);
            lblportcustomer.TabIndex = 15;
            lblportcustomer.Text = "Port";
            // 
            // lblidcustomer
            // 
            lblidcustomer.AutoSize = true;
            lblidcustomer.Location = new Point(1226, 513);
            lblidcustomer.Name = "lblidcustomer";
            lblidcustomer.Size = new Size(30, 25);
            lblidcustomer.TabIndex = 15;
            lblidcustomer.Text = "ID";
            // 
            // lblpasscustomer
            // 
            lblpasscustomer.AutoSize = true;
            lblpasscustomer.Location = new Point(1170, 570);
            lblpasscustomer.Name = "lblpasscustomer";
            lblpasscustomer.Size = new Size(87, 25);
            lblpasscustomer.TabIndex = 15;
            lblpasscustomer.Text = "Password";
            // 
            // Setting
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.Gainsboro;
            ClientSize = new Size(1510, 771);
            Controls.Add(lblpasscustomer);
            Controls.Add(lblpassword);
            Controls.Add(lblidcustomer);
            Controls.Add(lblid);
            Controls.Add(lblportcustomer);
            Controls.Add(lblport);
            Controls.Add(lblipcustomer);
            Controls.Add(lblip);
            Controls.Add(passwordcustomer);
            Controls.Add(passwordcnn);
            Controls.Add(idcustomer);
            Controls.Add(idcnn);
            Controls.Add(portcustomer);
            Controls.Add(ipcustomer);
            Controls.Add(portcnn);
            Controls.Add(ipcnn);
            Controls.Add(btn);
            Controls.Add(lblset);
            Controls.Add(prgBar);
            Controls.Add(chkAll);
            Controls.Add(lblTables);
            Controls.Add(button2);
            Controls.Add(btnExit);
            Controls.Add(rdData);
            Controls.Add(rdChema);
            Controls.Add(btnRestore);
            Controls.Add(btnbacup);
            Controls.Add(btnCreateDB);
            Controls.Add(btnCreate);
            Controls.Add(drgViewTables);
            FormBorderStyle = FormBorderStyle.FixedSingle;
            MaximizeBox = false;
            Name = "Setting";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Setting";
            Load += Setting_Load;
            ((System.ComponentModel.ISupportInitialize)drgViewTables).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView drgViewTables;
        private Button btnCreate;
        private Button btnCreateDB;
        private Button btnbacup;
        private Button btnRestore;
        private RadioButton rdChema;
        private RadioButton rdData;
        private Button btnExit;
        private Button button2;
        private Label lblTables;
        private CheckBox chkAll;
        private ProgressBar prgBar;
        private Label lblset;
        private Button btn;
        private TextBox ipcnn;
        private Label lblip;
        private TextBox portcnn;
        private TextBox idcnn;
        private TextBox passwordcnn;
        private Label lblport;
        private Label lblid;
        private Label lblpassword;
        private TextBox ipcustomer;
        private TextBox portcustomer;
        private TextBox idcustomer;
        private TextBox passwordcustomer;
        private Label lblipcustomer;
        private Label lblportcustomer;
        private Label lblidcustomer;
        private Label lblpasscustomer;
    }
}