﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SSS_Windows_Forms.Forms.Tutor
{
    public partial class TutorDashboardModal : Form
    {
        public TutorDashboardModal()
        {
            InitializeComponent();
            this.TopLevel = false;
            this.AutoScroll = true;
            this.Hide();
        }

        private void TutorDashboardModal_Load(object sender, EventArgs e)
        {
            
        }
    }
}
