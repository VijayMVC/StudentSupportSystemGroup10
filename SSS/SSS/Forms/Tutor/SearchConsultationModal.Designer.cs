﻿namespace SSS_Windows_Forms.Forms.Tutor
{
    partial class SearchConsultationModal
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
            this.consultationFullDataTableAdapter = new SSS_Library.IS2G10_DBSSSDataSetTableAdapters.CONSULTATION_FULL_DATATableAdapter();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.consultationdetailsDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.consultationdateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.studentarrivedDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.consultationratingDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.studentidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.studentfirstnameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.studentlastnameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tutoridDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tutorfirstnameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tutorlastnameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tutortrainingstatusDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.cONSULTATIONFULLDATARowBindingSource = new SSS_Library.IS2G10_DBSSSDataSet.CONSULTATION_FULL_DATADataTable();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cONSULTATIONFULLDATARowBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // consultationTableAdapter1
            // 
            this.consultationFullDataTableAdapter.ClearBeforeFill = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.consultationdetailsDataGridViewTextBoxColumn,
            this.consultationdateDataGridViewTextBoxColumn,
            this.studentarrivedDataGridViewCheckBoxColumn,
            this.consultationratingDataGridViewTextBoxColumn,
            this.groupidDataGridViewTextBoxColumn,
            this.studentidDataGridViewTextBoxColumn,
            this.studentfirstnameDataGridViewTextBoxColumn,
            this.studentlastnameDataGridViewTextBoxColumn,
            this.tutoridDataGridViewTextBoxColumn,
            this.tutorfirstnameDataGridViewTextBoxColumn,
            this.tutorlastnameDataGridViewTextBoxColumn,
            this.tutortrainingstatusDataGridViewCheckBoxColumn});
            this.dataGridView1.DataSource = this.cONSULTATIONFULLDATARowBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(71, 67);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(625, 313);
            this.dataGridView1.TabIndex = 0;
            // 
            // consultationdetailsDataGridViewTextBoxColumn
            // 
            this.consultationdetailsDataGridViewTextBoxColumn.DataPropertyName = "consultation_details";
            this.consultationdetailsDataGridViewTextBoxColumn.HeaderText = "consultation_details";
            this.consultationdetailsDataGridViewTextBoxColumn.Name = "consultationdetailsDataGridViewTextBoxColumn";
            this.consultationdetailsDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // consultationdateDataGridViewTextBoxColumn
            // 
            this.consultationdateDataGridViewTextBoxColumn.DataPropertyName = "consultation_date";
            this.consultationdateDataGridViewTextBoxColumn.HeaderText = "consultation_date";
            this.consultationdateDataGridViewTextBoxColumn.Name = "consultationdateDataGridViewTextBoxColumn";
            this.consultationdateDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // studentarrivedDataGridViewCheckBoxColumn
            // 
            this.studentarrivedDataGridViewCheckBoxColumn.DataPropertyName = "student_arrived";
            this.studentarrivedDataGridViewCheckBoxColumn.HeaderText = "student_arrived";
            this.studentarrivedDataGridViewCheckBoxColumn.Name = "studentarrivedDataGridViewCheckBoxColumn";
            this.studentarrivedDataGridViewCheckBoxColumn.ReadOnly = true;
            // 
            // consultationratingDataGridViewTextBoxColumn
            // 
            this.consultationratingDataGridViewTextBoxColumn.DataPropertyName = "consultation_rating";
            this.consultationratingDataGridViewTextBoxColumn.HeaderText = "consultation_rating";
            this.consultationratingDataGridViewTextBoxColumn.Name = "consultationratingDataGridViewTextBoxColumn";
            this.consultationratingDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // groupidDataGridViewTextBoxColumn
            // 
            this.groupidDataGridViewTextBoxColumn.DataPropertyName = "group_id";
            this.groupidDataGridViewTextBoxColumn.HeaderText = "group_id";
            this.groupidDataGridViewTextBoxColumn.Name = "groupidDataGridViewTextBoxColumn";
            this.groupidDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // studentidDataGridViewTextBoxColumn
            // 
            this.studentidDataGridViewTextBoxColumn.DataPropertyName = "student_id";
            this.studentidDataGridViewTextBoxColumn.HeaderText = "student_id";
            this.studentidDataGridViewTextBoxColumn.Name = "studentidDataGridViewTextBoxColumn";
            this.studentidDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // studentfirstnameDataGridViewTextBoxColumn
            // 
            this.studentfirstnameDataGridViewTextBoxColumn.DataPropertyName = "student_firstname";
            this.studentfirstnameDataGridViewTextBoxColumn.HeaderText = "student_firstname";
            this.studentfirstnameDataGridViewTextBoxColumn.Name = "studentfirstnameDataGridViewTextBoxColumn";
            this.studentfirstnameDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // studentlastnameDataGridViewTextBoxColumn
            // 
            this.studentlastnameDataGridViewTextBoxColumn.DataPropertyName = "student_lastname";
            this.studentlastnameDataGridViewTextBoxColumn.HeaderText = "student_lastname";
            this.studentlastnameDataGridViewTextBoxColumn.Name = "studentlastnameDataGridViewTextBoxColumn";
            this.studentlastnameDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // tutoridDataGridViewTextBoxColumn
            // 
            this.tutoridDataGridViewTextBoxColumn.DataPropertyName = "tutor_id";
            this.tutoridDataGridViewTextBoxColumn.HeaderText = "tutor_id";
            this.tutoridDataGridViewTextBoxColumn.Name = "tutoridDataGridViewTextBoxColumn";
            this.tutoridDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // tutorfirstnameDataGridViewTextBoxColumn
            // 
            this.tutorfirstnameDataGridViewTextBoxColumn.DataPropertyName = "tutor_firstname";
            this.tutorfirstnameDataGridViewTextBoxColumn.HeaderText = "tutor_firstname";
            this.tutorfirstnameDataGridViewTextBoxColumn.Name = "tutorfirstnameDataGridViewTextBoxColumn";
            this.tutorfirstnameDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // tutorlastnameDataGridViewTextBoxColumn
            // 
            this.tutorlastnameDataGridViewTextBoxColumn.DataPropertyName = "tutor_lastname";
            this.tutorlastnameDataGridViewTextBoxColumn.HeaderText = "tutor_lastname";
            this.tutorlastnameDataGridViewTextBoxColumn.Name = "tutorlastnameDataGridViewTextBoxColumn";
            this.tutorlastnameDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // tutortrainingstatusDataGridViewCheckBoxColumn
            // 
            this.tutortrainingstatusDataGridViewCheckBoxColumn.DataPropertyName = "tutor_trainingstatus";
            this.tutortrainingstatusDataGridViewCheckBoxColumn.HeaderText = "tutor_trainingstatus";
            this.tutortrainingstatusDataGridViewCheckBoxColumn.Name = "tutortrainingstatusDataGridViewCheckBoxColumn";
            this.tutortrainingstatusDataGridViewCheckBoxColumn.ReadOnly = true;
            // 
            // SearchConsultationModal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(753, 539);
            this.ControlBox = false;
            this.Controls.Add(this.dataGridView1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "SearchConsultationModal";
            this.Text = "SearchConsultationModal";
            this.Load += new System.EventHandler(this.SearchConsultationModal_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cONSULTATIONFULLDATARowBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private SSS_Library.IS2G10_DBSSSDataSetTableAdapters.CONSULTATION_FULL_DATATableAdapter consultationFullDataTableAdapter;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn consultationdetailsDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn consultationdateDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn studentarrivedDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn consultationratingDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn groupidDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn studentidDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn studentfirstnameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn studentlastnameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn tutoridDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn tutorfirstnameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn tutorlastnameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn tutortrainingstatusDataGridViewCheckBoxColumn;
        private SSS_Library.IS2G10_DBSSSDataSet.CONSULTATION_FULL_DATADataTable cONSULTATIONFULLDATARowBindingSource;
    }
}