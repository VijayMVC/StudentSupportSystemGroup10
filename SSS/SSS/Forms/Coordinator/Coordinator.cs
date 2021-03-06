﻿using System;
using System.Windows.Forms;
using SSS_Windows_Forms.Forms.Administrator;
using SSS_Windows_Forms.Forms.Coordinator.LowTutorRatings;
using SSS_Windows_Forms.Forms.Coordinator.TutorRatings;
using SSS_Windows_Forms.Forms.Coordinator.TutorTraining;
using SSS_Windows_Forms.Forms.Tutor;

namespace SSS_Windows_Forms.Forms.Coordinator
{
    public partial class Coordinator : Form
    {   //database stuff 

        //modals
        public readonly RegisterStudentModal _registerStudentModal;
        private readonly CoordinatorDashboardModal _coordinatorDashboardModal = new CoordinatorDashboardModal();
        private readonly StudentEngagementModal _studentDisengagementModal = new StudentEngagementModal();
        private readonly TutorRatingsAListModal _tutorRatingsAModal = new TutorRatingsAListModal();
        private readonly TutorRatingBIndividualModal _tutorRatingBIndividualModal = new TutorRatingBIndividualModal();
        private readonly TutorRatingCModal _tutorRatingCModal = new TutorRatingCModal();
        private readonly RegisterTutorModal _registerTutorModal;
        private readonly ViewDisengagedStudentsModal _viewDisengagedStudentsModal = new ViewDisengagedStudentsModal();
        private readonly SearchStudentModal _searchStudentModal;
        private readonly SearchStudentModal _updateStudentModal;
        private readonly SearchTutorModal _searchTutorModal;
        private readonly SearchTutorModal _updateTutorModal;
        private readonly AverageActivityRatingsModal _averageActivityRatingsModal = new AverageActivityRatingsModal();
        private readonly TutorTrainingStatusModal _tutorTrainingStatusModal = new TutorTrainingStatusModal();
        private readonly TutorsWithTrainingModal _tutorsWithTrainingModal = new TutorsWithTrainingModal();
        private readonly TutorsWithoutTrainingModal _tutorsWithoutTrainingModal = new TutorsWithoutTrainingModal();
        public readonly SearchConsultationModal _searchStudentConsultationModal;
        private readonly UpdateActivityModal _updateActivityModal;
        private readonly UpdateCoordinatorProfileModal _updateCoordinatorProfileModal;
        private readonly AssignTutor _assignTutor;
        private readonly AddCourseModal _addCourseModal = new AddCourseModal();
        private readonly UpdateCourseModal _updateCourseModal = new UpdateCourseModal();
        
        public Coordinator(int userId)
        {
            InitializeComponent();
            
            var coordinatorData = sSS_COORDINATORTableAdapter.GetData().FindBycoordinator_id(userId);
            _registerStudentModal = new RegisterStudentModal(userId);
            _registerTutorModal = new RegisterTutorModal(userId);

            _searchStudentModal = new SearchStudentModal(userId, "None");
            _updateStudentModal = new SearchStudentModal(userId, "UpdateStudent") {Parent = this};

            _searchTutorModal = new SearchTutorModal(userId, false);
            _updateTutorModal = new SearchTutorModal(userId, true) { Parent = this };

            _searchStudentConsultationModal = new SearchConsultationModal(userId, null);

            _updateActivityModal = new UpdateActivityModal(userId, null);

            _updateCoordinatorProfileModal = new UpdateCoordinatorProfileModal(userId);

            _assignTutor = new AssignTutor(userId);

            lblCoordinatorName.Text = String.Format("{0} {1} {2}", coordinatorData.coordinator_firstname, coordinatorData.coordinator_lastname, userId);
            tmrSecond.Start();
            InitModals();
        }

        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            this.Owner.Show();
        }

        //TODO cleanup
        private void InitModals()
        {
            //init internal window
            this.panel7.Controls.Add(_registerStudentModal);
            this.panel7.Controls.Add(_coordinatorDashboardModal);
            this.panel7.Controls.Add(_studentDisengagementModal);
            this.panel7.Controls.Add(_tutorRatingsAModal);
            this.panel7.Controls.Add(_tutorRatingBIndividualModal);
            this.panel7.Controls.Add(_tutorRatingCModal);
            this.panel7.Controls.Add(_registerTutorModal);
            this.panel7.Controls.Add(_viewDisengagedStudentsModal);
            this.panel7.Controls.Add(_searchStudentModal);
            this.panel7.Controls.Add(_updateStudentModal);
            this.panel7.Controls.Add(_searchTutorModal);
            this.panel7.Controls.Add(_updateTutorModal);
            this.panel7.Controls.Add(_averageActivityRatingsModal);
            this.panel7.Controls.Add(_tutorTrainingStatusModal);
            this.panel7.Controls.Add(_tutorsWithTrainingModal);
            this.panel7.Controls.Add(_tutorsWithoutTrainingModal);
            this.panel7.Controls.Add(_searchStudentConsultationModal);
            this.panel7.Controls.Add(_updateActivityModal);
            this.panel7.Controls.Add(_updateCoordinatorProfileModal);
            this.panel7.Controls.Add(_assignTutor);
            this.panel7.Controls.Add(_addCourseModal);
            this.panel7.Controls.Add(_updateCourseModal);
        }

        public void SetModal(Control value)
        {
            this.panel7.Controls.Add(value);
        }

        private void HideAllModals()
        {
            foreach (Form modal in panel7.Controls)
            {
                modal.Hide();
            }
        }

        private void Coordinator_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'iS2G10_DBSSSDataSet.SSS_COORDINATOR' table. You can move, or remove it, as needed.
            this.sSS_COORDINATORTableAdapter.Fill(this.iS2G10_DBSSSDataSet.SSS_COORDINATOR);
            HideAllModals();
            _coordinatorDashboardModal.Show();
        }

        private void tmrSecond_Tick(object sender, EventArgs e)
        {
            lblDate.Text = String.Format("{0} {1}", DateTime.Now.ToShortDateString(), DateTime.Now.ToLongTimeString());
        }

        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //TODO CLOSE ALL MODALS
            _registerStudentModal.Close();
            this.Close(); 
        }

        private void dashboardToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _coordinatorDashboardModal.Show();
        }

        private void registerTutorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _registerTutorModal.Show();
        }

        private void registerStudentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _registerStudentModal.Show();
        }

        private void updateTutorToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _updateTutorModal.Show();
        }

        private void updateStudentToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _updateStudentModal.Show();
        }

        private void searchStudentsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _searchStudentModal.Show();
        }

        private void searchTutorsToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _searchTutorModal.Show();
        }

        
        private void averageTutorRatingsToolStripMenuItem_Click_2(object sender, EventArgs e)
        {
            HideAllModals();
            _tutorRatingsAModal.Show();
        }

        private void viewTutorRatingsToolStripMenuItem_Click_2(object sender, EventArgs e)
        {
            HideAllModals();
            _tutorRatingBIndividualModal.Show();
        }

        private void viewDisengagedStudentsToolStripMenuItem_Click_2(object sender, EventArgs e)
        {
            HideAllModals();
            _viewDisengagedStudentsModal.Show();
        }

        private void studentEngagementToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();

            _studentDisengagementModal.reportViewer1.RefreshReport();
            _studentDisengagementModal.Show();
        }

        private void courseDisengagementToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _averageActivityRatingsModal.Show();
        }

        private void tutorTrainingStatusToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _tutorTrainingStatusModal.Show();
        }

        private void tutorsWithoutTrainingToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _tutorsWithoutTrainingModal.Show();
        }

        private void tutorsWithTrainingToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _tutorsWithTrainingModal.Show();
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _updateActivityModal.Show();
        }

        private void assignTutorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _assignTutor.Show();
        }

        private void updateProfileToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _updateCoordinatorProfileModal.Show();
        }

        private void updateStudentConsultationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _searchStudentConsultationModal.Show();
        }

        private void addCourseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _addCourseModal.Show();
        }

        private void updateCourseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HideAllModals();
            _updateCourseModal.Show();
        }
    }
}
