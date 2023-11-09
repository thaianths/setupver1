using Devart.Common;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Microsoft.SqlServer.Management.HadrData;
using Microsoft.SqlServer.Management.Smo;
using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Core.Metadata.Edm;
using System.Diagnostics;
using System.Diagnostics.Eventing.Reader;
using System.Diagnostics.Metrics;
using System.Drawing;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.ComponentModel.Design.ObjectSelectorEditor;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar;

namespace WinFormsApp1
{
    public partial class Setting : Form
    {
        //const string cnn = @"Server=127.0.0.1;
        //                    Port=5432;
        //                    User Id=postgres;
        //                    Password=1234;Database=";
        //string db = "dev24";

        //Server company
        //const string cnn = @"Server=192.168.1.22;
        //                    Port=5732;
        //                    User Id=postgres;
        //                    Password=12345678;Database=";

        //string cnn = String.Format(@"Server={0};Port={1};User Id={2};Password={3};Database=", ip_cnn, Port_cnn, Id_cnn, Password_cnn);
        //const string ip_cnn = "192.168.1.22";
        //const string Port_cnn = "5732";
        //const string Id_cnn = "postgres";
        //const string Password_cnn = "12345678";
        string db = "dev24_source";


        //customer
        //const string cnn_customer = @"Server=127.0.0.1;
        //                   Port=5432;
        //                   User Id=postgres;
        //                   Password=1234;Database=";



        //string cnn_customer = String.Format(@"Server={0};Port={1};User Id={2};Password={3};Database=", ip_cnn_customer, Port_cnn_customer, Id_cnn_customer, Password_cnn_customer);
        //const string ip_cnn_customer = "127.0.0.1";
        //const string Port_cnn_customer = "5432";
        //const string Id_cnn_customer = "postgres";
        //const string Password_cnn_customer = "1234";




        string dbName1 = " customer1";
        string dbName2 = " customer2";
        //string _dir = " C:\\Users\\SW24\\source\\repos\\ProjectSetup3\\WinFormsApp1\\backup\\";
        //string _dir = AppDomain.CurrentDomain.BaseDirectory + "backup\\";
        string _dir = new FileInfo(AppDomain.CurrentDomain.BaseDirectory).Directory.Parent.Parent.Parent.FullName.ToString() + @"\backup\";


        //File PSQL directory
        //string _WorkingDirectory = @"C:\Users\SW24\source\repos\ProjectSetup2\WinFormsApp1\PgSql";
        //string _WorkingDirectory = AppDomain.CurrentDomain.BaseDirectory + "PgSql";
        string _WorkingDirectory = new FileInfo(AppDomain.CurrentDomain.BaseDirectory).Directory.Parent.Parent.Parent.FullName.ToString() + @"\PgSql";


        string _exe = "cmd.exe";
        //string sqlList = @"SELECT tablename,tableowner FROM pg_catalog.pg_tables where schemaname = 'public'";
        DataTable dt;
        int selectedTables = 0;
        int threadSleepBck = 1500;
        int threadSleepRst = 500;

        DataGridViewCheckBoxColumn dgvCmb = new DataGridViewCheckBoxColumn();



        public Setting()
        {
            InitializeComponent();
            dgvCmb.ValueType = typeof(bool);
            dgvCmb.Name = "ChkSchema";
            dgvCmb.HeaderText = "Select";
            drgViewTables.Columns.Add(dgvCmb);
            runProcess();
            rdChema.Checked = true;

        }
        public void runProcess()
        {
            //ReturnDatatable(@"C:\Users\SW24\source\repos\ProjectSetup\WinFormsApp1\backup");
            Task.Factory.StartNew(() =>
            {
                Process ps = new Process();
                ps.StartInfo = new ProcessStartInfo(_exe)
                {
                    WorkingDirectory = _WorkingDirectory,
                    RedirectStandardError = true,
                    RedirectStandardInput = true,
                    RedirectStandardOutput = true,
                    UseShellExecute = false,
                    CreateNoWindow = true
                };
                ps.Start();
                this.btnbacup.Click += (s, e) =>
                {

                    CreateProcess(ps, true, rdChema, e,
                        ipcustomer.Text,
                        portcustomer.Text,
                        idcustomer.Text,
                        passwordcustomer.Text,
                        ipcnn.Text,
                        portcnn.Text,
                        idcnn.Text,
                        passwordcnn.Text);
                };
                this.btnRestore.Click += (s, e) =>
                {
                    CreateProcess(ps, false, rdChema, e,
                        ipcustomer.Text,
                        portcustomer.Text,
                        idcustomer.Text,
                        passwordcustomer.Text,
                        ipcnn.Text,
                        portcnn.Text,
                        idcnn.Text,
                        passwordcnn.Text);
                };
                //ps.Start();
                //ps.BeginErrorReadLine();
                //ps.ErrorDataReceived += (s, e) => MessageBox.Show(e.Data);
                //ps.OutputDataReceived += (s, e) => MessageBox.Show(e.Data);
                ps.BeginErrorReadLine();
                ps.BeginOutputReadLine();
                ps.WaitForExit();
            });
        }
        public async void CreateProcess(Process ps,
                                       Boolean backup,
                                       RadioButton btn,
                                       EventArgs e,
                                       string ip_cnn_customer,
                                       string Port_cnn_customer,
                                       string Id_cnn_customer,
                                       string Password_cnn_customer,
                                       string ip_cnn,
                                       string Port_cnn,
                                       string Id_cnn,
                                       string Password_cnn)
        {

            string cnn = String.Format(@"Server={0};Port={1};User Id={2};Password={3};Database=", ip_cnn, Port_cnn, Id_cnn, Password_cnn);
            int count = 0;
            prgBar.Minimum = 0;
            selectedTables = returnDataTableCheckedBox(this.drgViewTables).Rows.Count;
            prgBar.Maximum = selectedTables;
            //ps.StandardInput.WriteLine(@"set PGPASSWORD=1234");

            if (CheckDatabaseExists(ReturnDbName(btn)))
            {
                if (returnDataTableCheckedBox(this.drgViewTables).Rows.Count > 0)
                {
                    foreach (DataRow row in returnDataTableCheckedBox(this.drgViewTables).Rows)
                    {
                        await Task.Run(() =>
                                {
                                    //Backup
                                    if (backup)
                                    {
                                        ps.StandardInput.WriteLine(@"set PGPASSWORD=" + Password_cnn);
                                        if (row["type"].ToString() != "procedure")
                                        {
                                            if (btn.Checked)
                                            {
                                                //ps.StandardInput.WriteLine("pg_dump -h 127.0.0.1 -p 5432 -U postgres --schema-only --format=c -d dev24 -t " + "public." + drgViewTables.Rows[i].Cells["tablename"].Value.ToString() + " > " + _dir + "public." + drgViewTables.Rows[i].Cells["tablename"].Value.ToString() + ".sql");
                                                //ps.StandardInput.WriteLine("pg_dump -h 192.168.1.22 -p 5732 -U postgres --schema-only --format=c -d dev24_source -t " + "public." + row["tablename"].ToString() + " > " + _dir + "public." + row["tablename"].ToString() + ".sql");
                                                //ps.StandardInput.WriteLine("pg_dump -h " + ip_cnn + " -p " + Port_cnn + " -U " + Id_cnn + " --schema-only --format=c -d dev24_source -t " + "public." + row["tablename"].ToString() + " > " + _dir + "public." + row["tablename"].ToString() + ".sql");
                                                ps.StandardInput.WriteLine("pg_dump -h " + ip_cnn + " -p " + Port_cnn + " -U " + Id_cnn + " --schema-only --format=c -d " + db + " -t " + "public." + row["tablename"].ToString() + " > " + _dir + "public." + row["tablename"].ToString() + ".sql");



                                                //ps.StandardInput.WriteLine("pg_dump -h " + ip_cnn + " -p " + Port_cnn + " -U " + Id_cnn + " --schema-only -N '*catalog*' -d dev24_source -t " + "public." + row["tablename"].ToString() + " > " + _dir + "public.1" + row["tablename"].ToString() + ".sql");
                                                //ps.StandardInput.WriteLine("pg_dump -h " + ip_cnn + " -p " + Port_cnn + " -U " + Id_cnn + " --schema-only  -d dev24_source -t " + " public.offer_tour_prepare " + " > " + _dir + "public.1" + row["tablename"].ToString() + ".sql");
                                                //ps.StandardInput.WriteLine("pg_dump " + ip_cnn + " -p " + Port_cnn + " -U " + Id_cnn + " -d dev24_source  -N function_schema > mydump.sql");
                                                //ps.StandardInput.WriteLine("pg_dump -h " + ip_cnn + " -p " + Port_cnn + " -U " + Id_cnn + " --schema-only --format=c -d dev24_source -t " + " public.driver_billing > " + _dir + "public." + row["tablename"].ToString() + ".sql");
                                            }
                                            else
                                            {
                                                //ps.StandardInput.WriteLine("pg_dump -h 127.0.0.1 -p 5432 -U postgres --format=c -d dev24 -t " + "public." + drgViewTables.Rows[i].Cells["tablename"].Value.ToString() + " > " + _dir + drgViewTables.Rows[i].Cells["tablename"].Value.ToString() + ".sql");
                                                //ps.StandardInput.WriteLine("pg_dump -h " + ip_cnn + " -p " + Port_cnn + " -U " + Id_cnn + " --format=c -d dev24_source -t " + "public." + row["tablename"].ToString() + " > " + _dir + row["tablename"].ToString() + ".sql");
                                                ps.StandardInput.WriteLine("pg_dump -h " + ip_cnn + " -p " + Port_cnn + " -U " + Id_cnn + " --format=c -d " + db + " -t " + "public." + row["tablename"].ToString() + " > " + _dir + row["tablename"].ToString() + ".sql");



                                            }
                                        }
                                        ps.StandardInput.Flush();
                                        Thread.Sleep(threadSleepBck);
                                    }
                                    else
                                    {
                                        ps.StandardInput.WriteLine(@"set PGPASSWORD=" + Password_cnn_customer);
                                        //Restore
                                        //stored procedure
                                        if (btn.Checked)
                                        {
                                            if (row["type"].ToString() == "procedure")
                                            {
                                                execute_stored_procedure(row["tableName"].ToString(), dbName1);
                                            }
                                            else
                                            {
                                                ps.StandardInput.WriteLine("pg_restore  -h " + ip_cnn_customer + " -p " + Port_cnn_customer + " -U " + Id_cnn_customer + " -v -d " + dbName1 + " " + _dir + "public." + row["tablename"].ToString() + ".sql");
                                            }
                                            //ps.OutputDataReceived += (s, e) => MessageBox.Show(e.Data);                                    //ps.StandardInput.WriteLine(@"pg_restore -h 127.0.0.1 -p 5432 -U postgres -v -d customer1 C:\Users\Public\public.base_packagings.sql");
                                        }
                                        else
                                        {
                                            if (row["type"].ToString() == "procedure")
                                            {
                                                execute_stored_procedure(row["tableName"].ToString(), dbName2);
                                            }
                                            else
                                            {
                                                ps.StandardInput.WriteLine("pg_restore  -h " + ip_cnn_customer + " -p " + Port_cnn_customer + " -U " + Id_cnn_customer + " -v -d " + dbName2 + " " + _dir + row["tablename"].ToString() + ".sql");
                                            }
                                        }
                                        ps.StandardInput.Flush();
                                        Thread.Sleep(threadSleepRst);
                                    }
                                });
                        count += 1;
                        prgBar.Value = count;
                        lblset.Text = ((count * 100) / selectedTables).ToString() + " %";
                    }
                    MessageBox.Show("Finish ");
                }
                else
                {
                    MessageBox.Show("");
                }
            }
            else
            {
                MessageBox.Show("Database not exist");
            }
        }
        public string ReturnDbName(RadioButton btn)
        {
            string DbNameName = string.Empty;
            switch (btn.Name)
            {
                case "rdChema":
                    DbNameName = dbName1;
                    break;
                case "rdData":
                    DbNameName = dbName2;
                    break;
            }
            return DbNameName;
        }

        public DataTable returnDataTableCheckedBox(DataGridView dr)
        {
            DataTable _dt = new DataTable();
            _dt.Columns.Add("tablename", typeof(string));
            _dt.Columns.Add("type", typeof(string));
            DataRow _dr;
            for (int i = 0; i < dr.Rows.Count; i++)
            {
                if (dr.Rows[i].Cells["ChkSchema"].Value != null)
                {
                    if (dr.Rows[i].Cells["ChkSchema"].Value.ToString() == "True")
                    {
                        if (dr.Rows[i].Cells["tablename"] != null)
                        {
                            _dr = _dt.NewRow();
                            _dr["tablename"] = dr.Rows[i].Cells["tablename"].Value.ToString();
                            _dr["type"] = dr.Rows[i].Cells["type"].Value.ToString();
                            _dt.Rows.Add(_dr);
                        }
                    }
                }
            }
            return _dt;
        }
        private void btnCreate_Click(object sender, EventArgs e)
        {
            List<ModelList> modelList = new List<ModelList>();
            //add table
            _GetList(_GetTable(@"SELECT tablename,tableowner FROM pg_catalog.pg_tables where schemaname = 'public'"), modelList, "table");
            //add view
            _GetList(_GetTable(@"SELECT table_schema AS chema_name, table_name AS tablename
                                 FROM information_schema.views
                                 WHERE  table_schema = 'public'"), modelList, "view");
            //add stored procedure
            _GetList(_GetTable(@"SELECT pg_get_functiondef(f.oid) AS tablename
                                 FROM pg_catalog.pg_proc f
                                 INNER JOIN pg_catalog.pg_namespace n ON (f.pronamespace = n.oid)
                                 WHERE n.nspname = 'public'"), modelList, "procedure");

            drgViewTables.DataSource = modelList.ToList();
            drgViewTables.Columns[1].Width = 500;
            drgViewTables.Columns[2].Width = 300;
            lblTables.Text = drgViewTables.Rows.Count.ToString() + " Tables";
            drgViewTables.ClearSelection();
        }
        public DataTable _GetTable(string sql)
        {
            string cnn = String.Format(@"Server={0};Port={1};User Id={2};Password={3};Database=", ipcnn.Text, portcnn.Text, idcnn.Text, passwordcnn.Text);
            dt = new DataTable();
            drgViewTables.Columns[0].Visible = true;
            drgViewTables.ClearSelection();
            using (NpgsqlConnection sourceConnection = new NpgsqlConnection(cnn + db))
            {
                sourceConnection.Open();
                using (NpgsqlCommand objcmd = new NpgsqlCommand(sql, sourceConnection))
                {
                    NpgsqlDataAdapter adp = new NpgsqlDataAdapter(objcmd);
                    adp.Fill(dt);
                }
                sourceConnection.Close();
            }

            return dt;
        }
        public void execute_stored_procedure(string? sql, string? db)
        {
            string cnn_customer = String.Format(@"Server={0};Port={1};User Id={2};Password={3};Database=", ipcustomer.Text, portcustomer.Text, idcustomer.Text, passwordcustomer.Text);
            using (NpgsqlConnection connect = new NpgsqlConnection(cnn_customer + db))
            {
                connect.Open();
                NpgsqlCommand cmd = new NpgsqlCommand(sql, connect);
                cmd.ExecuteNonQuery();
                connect.Close();
            }
        }

        public List<ModelList> _GetList(DataTable dt, List<ModelList> lst, string _type)
        {
            foreach (DataRow dtRow in dt.Rows)
            {
                lst.Add(new ModelList()
                {
                    tableName = dtRow["tablename"].ToString(),
                    type = _type
                });
            }
            return lst.ToList();
        }
        private void Setting_Load(object sender, EventArgs e)
        {
        }
        public DataTable GetDataTable(string connect,
                                      string sqlList)
        {
            DataTable _dt = new DataTable();
            using (NpgsqlConnection Connection = new NpgsqlConnection(connect))
            {
                Connection.Open();
                using (NpgsqlCommand objcmd = new NpgsqlCommand(sqlList, Connection))
                {
                    NpgsqlDataAdapter adp = new NpgsqlDataAdapter(objcmd);
                    adp.Fill(_dt);
                }
                Connection.Close();
            }
            return _dt;
        }
        public DataTable ReturnDatatable(string path)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            String[] s1;

            s1 = Directory.GetFiles(path, "*", SearchOption.AllDirectories);
            for (int i = 0; i < s1.Length; i++)
            {
                if (i == 0)
                {
                    dt.Columns.Add("File_Name");
                    dt.Columns.Add("File_Type");
                    dt.Columns.Add("File_Size");
                    dt.Columns.Add("Create_Date");
                }
                FileInfo f = new FileInfo(s1[i]);
                FileSystemInfo f1 = new FileInfo(s1[i]);
                dr = dt.NewRow();
                dr["File_Name"] = f1.Name;
                dr["File_Type"] = f1.Extension;
                dr["File_Size"] = (f.Length / 1024).ToString();
                dr["Create_Date"] = f1.CreationTime.Date.ToString("dd/MM/yyyy");
                dt.Rows.Add(dr);

            }
            return dt;
        }
        private bool CheckDatabaseExists(string databaseName)
        {
            string cnn_customer = String.Format(@"Server={0};Port={1};User Id={2};Password={3};Database=", ipcustomer.Text, portcustomer.Text, idcustomer.Text, passwordcustomer.Text);
            string sqlCreateDBQuery;
            bool result = false;
            var tmpConn = new NpgsqlConnection(cnn_customer);
            sqlCreateDBQuery = @"SELECT 1 FROM 
                               pg_database WHERE 
                               datname = '" + databaseName.Trim().ToString() + "'";
            using (tmpConn)
            {
                using (NpgsqlCommand sqlCmd = new NpgsqlCommand(sqlCreateDBQuery, tmpConn))
                {
                    tmpConn.Open();
                    object? resultObj = sqlCmd.ExecuteScalar();
                    int databaseID = 0;
                    if (resultObj != null)
                    {
                        int.TryParse(resultObj.ToString(), out databaseID);
                    }

                    tmpConn.Close();
                    result = (databaseID > 0);
                }
            }
            return result;
        }
        private void button1_Click(object sender, EventArgs e)
        {
            if (rdChema.Checked)
            {
                CreateDatabase(dbName1);
            }
            else
            {
                CreateDatabase(dbName2);
            }
        }
        public void CreateDatabase(string dbName)
        {
            string cnn_customer = String.Format(@"Server={0};Port={1};User Id={2};Password={3};Database=", ipcustomer.Text, portcustomer.Text, idcustomer.Text, passwordcustomer.Text);

            try
            {
                var m_conn = new NpgsqlConnection(cnn_customer);
                var m_createdb_cmd = new NpgsqlCommand(@"
                CREATE DATABASE " + dbName +
                @" WITH
                OWNER = postgres
                ENCODING = 'UTF8'
                TABLESPACE = pg_default
                CONNECTION LIMIT = -1
                IS_TEMPLATE = False;", m_conn);
                m_conn.Open();
                m_createdb_cmd.ExecuteNonQuery();
                m_conn.Close();
                MessageBox.Show("Finish");
                drgViewTables.Enabled = true;
            }
            catch
            {
                MessageBox.Show("Database Exist");
            }
        }
        private void btnbacup_Click(object sender, EventArgs e)
        {
            drgViewTables.ClearSelection();
        }
        private void btnRestore_Click(object sender, EventArgs e)
        {
            drgViewTables.ClearSelection();
        }
        private void button1_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }
        private void button2_Click(object sender, EventArgs e)
        {
            if (rdChema.Checked)
            {
                DeleteDB(dbName1);
            }
            else
            {
                DeleteDB(dbName2);
            }
        }
        public void DeleteDB(string db)
        {
            string cnn_customer = String.Format(@"Server={0};Port={1};User Id={2};Password={3};Database=", ipcustomer.Text, portcustomer.Text, idcustomer.Text, passwordcustomer.Text);
            try
            {
                var m_conn = new NpgsqlConnection(cnn_customer);
                var m_createdb_cmd = new NpgsqlCommand(@"
                DROP DATABASE " + db, m_conn);
                m_conn.Open();
                m_createdb_cmd.ExecuteNonQuery();
                m_conn.Close();
                MessageBox.Show("Finish");
            }
            catch
            {
                MessageBox.Show("Close and Reset PgAdmin");
            }
        }
        private void chkAll_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAll.Checked)
            {
                CheckUncheckAll(this.drgViewTables, true);
            }
            else
            {
                CheckUncheckAll(this.drgViewTables, false);
            }
        }
        public void CheckUncheckAll(DataGridView drg, Boolean bl)
        {
            for (int i = 0; i < drg.Rows.Count; i++)
            {
                drg.Rows[i].Cells["ChkSchema"].Value = bl;
            }
        }

        private void button1_Click_2(object sender, EventArgs e)
        {

        }
        private void btn_Click(object sender, EventArgs e)
        {
           
        }
    }
}
