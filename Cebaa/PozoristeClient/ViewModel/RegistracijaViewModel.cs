using PozoristeClient.Helpers;
using PozoristeClient.Utility;
using Pozoristeee;
using Pozoristeee.Repository;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace PozoristeClient.ViewModel
{
    public class RegistracijaViewModel : ViewBase
    {
        public Window Window { get; set; }
        UnitOfWork unitOfWork = new UnitOfWork(new Pozoristeee.Model1Container3());


        private string _sifra;
        public string Sifra
        {
            get
            {
                return _sifra;
            }
            set
            {
                if (_sifra != value)
                {
                    _sifra = value;
                    OnPropertyChanged("Sifra");
                }
            }
        }

        private string _email;
        public string Email
        {
            get
            {
                return _email;
            }
            set
            {
                if (_email != value)
                {
                    _email = value;
                    OnPropertyChanged("Email");
                }
            }
        }

        private BindingList<string> _role;
        public BindingList<string> Role
        {
            get
            {
                return _role;
            }
            set
            {
                if (_role != value)
                {
                    _role = value;
                    OnPropertyChanged("Role");
                }
            }
        }

        private string _rola;
        public string Rola
        {
            get
            {
                return _rola;
            }
            set
            {
                if (_rola != value)
                {
                    _rola = value;
                    OnPropertyChanged("Rola");
                }
            }
        }

        public CommandBase RegistrujCommand { get; set; }

        public RegistracijaViewModel()
        {
            
            Role = new BindingList<string>();
            Role.Add(Enums.Role.Korisnik.ToString());
            Role.Add(Enums.Role.Admin.ToString());

            RegistrujCommand = new CommandBase(Registracija);
        }

        public void Registracija(object parameter)
        {
            var korisnik = new Korisnik()
            {
                Email = Email,
                Sifra = Sifra,
                Rola = this.Rola
            };

            unitOfWork.Korisnik.DodajKorisnika(korisnik);
        }
    }
}
