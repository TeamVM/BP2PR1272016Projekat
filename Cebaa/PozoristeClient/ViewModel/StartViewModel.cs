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
    public class StartViewModel : ViewBase
    {
        public Window Window { get; set; }
        UnitOfWork unitOfWork = new UnitOfWork(new Pozoristeee.Model1Container3());

        public CommandBase RegistracijaCommand { get; set; }
        public CommandBase LoginCommand { get; set; }
        public CommandBase KreirajPozoristeCommand { get; set; }

        public CommandBase KreirajSaluCommand { get; set; }

        public StartViewModel()
        {
            RegistracijaCommand = new CommandBase(OnViewRegistracija);
            KreirajPozoristeCommand = new CommandBase(OnViewKreirajPozoriste);
            LoginCommand = new CommandBase(OnViewLogin);
            KreirajSaluCommand = new CommandBase(OnViewSala);
        }

        public void OnViewRegistracija(object parameter)
        {
            new RegistracijaWindow().ShowDialog();
            Window.Close();
        }
        public void OnViewLogin(object parameter)
        {
            new LoginWindow().ShowDialog();
            Window.Close();
        }
        public void OnViewKreirajPozoriste(object parameter)
        {
            new KreirajPozoriste().ShowDialog();
            Window.Close();
        }
        public void OnViewSala(object parameter)
        {
            new SalaWindow().ShowDialog();
            Window.Close();
        }

    }
}
