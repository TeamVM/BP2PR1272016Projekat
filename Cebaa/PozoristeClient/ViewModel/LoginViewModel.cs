using PozoristeClient.Helpers;
using PozoristeClient.View;
using Pozoristeee.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace PozoristeClient.ViewModel
{
    public class LoginViewModel : ViewBase
    {
        public Window Window { get; set; }
        UnitOfWork unitOfWork = new UnitOfWork(new Pozoristeee.Model1Container3());
        private string _userName;
        public string UserName 
        {
            get 
            {
                return _userName;
            }
            set
            {
                if(_userName != value)
                {
                    _userName = value;
                    OnPropertyChanged("UserName");
                }
            }
        }

        private string _password;
        public string Password
        {
            get
            {
                return _password;
            }
            set
            {
                if (_password != value)
                {
                    _password = value;
                    OnPropertyChanged("Password");
                }
            }
        }

        public CommandBase LoginCommand { get; set; }

        public LoginViewModel()
        {
            Password = "";
            UserName = "";

            LoginCommand = new CommandBase(Login);
        }

        public void Login(object parameter)
        {
            var user = unitOfWork.Korisnik.PretraziPoUserPass(UserName, Password);
            if(user != null)
            {
                //new RegistracijaWindow().ShowDialog();
                LoggedUser.UlogovaniKorisnik = user;
                new KreirajPozoriste().ShowDialog();
            }

            Window.Close();
        }
    }
}
