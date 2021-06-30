using PozoristeClient.Helpers;
using Pozoristeee;
using Pozoristeee.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace PozoristeClient.ViewModel
{
    public class KreirajPozoristeViewModel : ViewBase
    {
        public Window Window { get; set; }
        UnitOfWork unitOfWork = new UnitOfWork(new Pozoristeee.Model1Container3());

        private string _ulica;
        private string _grad;
        private string _naziv;

        public string Ulica
        {
            get
            {
                return _ulica;
            }
            set
            {
                if (_ulica != value)
                {
                    _ulica = value;
                    OnPropertyChanged("Ulica");
                }
            }
        }

        public string Grad
        {
            get
            {
                return _grad;
            }
            set
            {
                if (_grad != value)
                {
                    _grad = value;
                    OnPropertyChanged("Grad");
                }
            }
        }

        public string Naziv
        {
            get
            {
                return _naziv;
            }
            set
            {
                if (_naziv != value)
                {
                    _naziv = value;
                    OnPropertyChanged("Naziv");
                }
            }
        }

        public CommandBase KreirajPozoristeCommand { get; set; }
        public KreirajPozoristeViewModel()
        {
            KreirajPozoristeCommand = new CommandBase(KreirajPozoriste);
        }

        public void KreirajPozoriste(object parameter)
        {
            if(LoggedUser.UlogovaniKorisnik.Rola != "Admin")
            {
                return;
            }

            Pozoriste p = new Pozoriste()
            {
                Naziv = _naziv,
                Grad = _grad,
                Ulica = _ulica,
                Korisnik = LoggedUser.UlogovaniKorisnik
            };

            unitOfWork.Pozoriste.Add(p);
        }
    }
}
