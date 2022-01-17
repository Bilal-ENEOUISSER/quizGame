using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuizGames
{
    public partial class LogReg : Form
    {
        public LogReg()
        {
            InitializeComponent();
        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {
            ProfilPlayer p1 = new ProfilPlayer();
            p1.Show();
            this.Hide();
        }
    }
}
