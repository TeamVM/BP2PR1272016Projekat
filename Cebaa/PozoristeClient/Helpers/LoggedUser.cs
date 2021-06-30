using Pozoristeee;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PozoristeClient.Helpers
{
    public class LoggedUser
    {
        public static Korisnik UlogovaniKorisnik { get; set; }

        public LoggedUser()
        {
            UlogovaniKorisnik = null;
        }
    }
}
