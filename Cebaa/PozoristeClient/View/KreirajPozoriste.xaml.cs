using PozoristeClient.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace PozoristeClient.View
{
    /// <summary>
    /// Interaction logic for KreirajPozoriste.xaml
    /// </summary>
    public partial class KreirajPozoriste : Window
    {
        public KreirajPozoriste()
        {
            InitializeComponent();
            DataContext = new KreirajPozoristeViewModel() { Window = this };
        }
    }
}
