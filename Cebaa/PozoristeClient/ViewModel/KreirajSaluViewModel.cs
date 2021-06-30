using PozoristeClient.Helpers;
using Pozoristeee;
using Pozoristeee.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace PozoristeClient.ViewModel
{
    public class KreirajSaluViewModel : System.Windows.Controls.ViewBase
    {
        public Window Window { get; set; }
        public int Pozoriste { get => _pozoriste; set => _pozoriste = value; }
        public string Kapacitet { get => _kapacitet; set => _kapacitet = value; }
        public string Naziv { get => _naziv; set => _naziv = value; }

        UnitOfWork unitOfWork = new UnitOfWork(new Pozoristeee.Model1Container3());

        private int _pozoriste;
        private string _kapacitet;
        private string _naziv;


        public CommandBase KreirajSaluCommand { get; set; }


        public KreirajSaluViewModel()
        {
            KreirajSaluCommand = new CommandBase(KreirajSalu);
        }

        public void KreirajSalu(object parameter)
        {
            if (LoggedUser.UlogovaniKorisnik.Rola != "Admin")
            {
                return;
            }

            Sala s = new Sala()
            {
                Naziv = _naziv,
                Kapacitet = Kapacitet,
                PozoristeId = 1
            };

            unitOfWork.Sala.Add(s);
        }

    }


}
