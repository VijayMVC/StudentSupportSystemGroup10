﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SSS.Forms.Coordinator
{
    public partial class CoordinatorDashboardModal : Form
    {
        public CoordinatorDashboardModal()
        {
            InitializeComponent();
            this.TopLevel = false;
            this.AutoScroll = true;
            this.Hide();
        }

        private void CoordinatorDashboardModal_Load(object sender, EventArgs e)
        {

            this.reportViewer1.RefreshReport();
        }
    }
}