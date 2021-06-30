using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pozoristeee.Repository.Interface
{
    public interface IKorisnikRepository : IRepositoryBase<Korisnik>
    {
        Korisnik DodajKorisnika(Korisnik korisnik);
        Korisnik EditujKorisnika(Korisnik korisnik);
        Korisnik PretraziPoUserPass(string userName, string password);
    }
}
