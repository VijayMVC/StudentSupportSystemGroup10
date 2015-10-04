﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SSS.Forms.Student;

namespace SSS
{
    public partial class Student : Form
    {

        //global vars
        private readonly String sPassword = "";

        //database stuff
        private readonly IS2G10_DBSSSDataSet.STUDENTRow _studentData;

        //Modals
        private readonly RegisterStudentAttendanceModal _registerStudentAttendanceModal = new RegisterStudentAttendanceModal();
        private readonly UpdateStudentProfileModal _updateStudentProfileModalModal;
        private readonly ViewScheduleModal _viewScheduleModal = new ViewScheduleModal();
        private readonly StudentDashboardModal _studentDashboardModal = new StudentDashboardModal();

        public Student(String sUsrId, String sPsswrd)
        {
            InitializeComponent();
            sPassword = sPsswrd;
            var userId = Convert.ToInt32(sUsrId);
            _studentData = sTUDENTTableAdapter.GetData().FindBystudent_id(userId);
            lblStudentName.Text = String.Format("{0} {1} {2}", _studentData.student_firstname, _studentData.student_lastname, userId);
            _updateStudentProfileModalModal = new UpdateStudentProfileModal(userId);
            InitModals();
        }

        private void InitModals()
        {
            //init internal window
            this.panel7.Controls.Add(_registerStudentAttendanceModal);
            this.panel7.Controls.Add(_updateStudentProfileModalModal);
            this.panel7.Controls.Add(_viewScheduleModal);
            this.panel7.Controls.Add(_studentDashboardModal);
        }

        private void HideAllModals()
        {
            _registerStudentAttendanceModal.Hide();
            _updateStudentProfileModalModal.Hide();
            _viewScheduleModal.Hide();
            _studentDashboardModal.Hide();
            //TODO Add hide for other modals
        }

        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            this.Owner.Show();
        }

        private void Student_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'iS2G10_DBSSSDataSet.STUDENT' table. You can move, or remove it, as needed.
            this.sTUDENTTableAdapter.Fill(this.iS2G10_DBSSSDataSet.STUDENT);
            HideAllModals();
            _studentDashboardModal.Show();
        }

        private void updateTutorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _registerStudentAttendanceModal.Show();
        }

        private void createTutorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
        }

        private void createStudentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
        }

        private void updateStudentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _updateStudentProfileModalModal.Show();
        }

        private void assignTutorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
        }

        private void viewScheduleToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _viewScheduleModal.Show();
        }

        private void studentDisengagementToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
        }

        private void courseDisengagementToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
        }

        private void dashboardToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _studentDashboardModal.Show();
        }

        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            _registerStudentAttendanceModal.Close();
            this.Close();
        }

        private void tmrSecond_Tick(object sender, EventArgs e)
        {
            lblDate.Text = String.Format("{0} {1}", DateTime.Now.ToShortDateString(), DateTime.Now.ToLongTimeString());
        }
    }
}