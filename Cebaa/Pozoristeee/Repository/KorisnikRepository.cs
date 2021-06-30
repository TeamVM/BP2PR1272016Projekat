using Pozoristeee.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pozoristeee.Repository
{
    public class KorisnikRepository : RepositoryBase<Korisnik>, IKorisnikRepository
    {
        public KorisnikRepository(Model1Container3 context) : base(context) { }

        public Korisnik DodajKorisnika(Korisnik korisnik)
        {
            _context.Entry(korisnik).State = System.Data.Entity.EntityState.Added;

            _context.SaveChanges();

            return korisnik;
        }

        public Korisnik EditujKorisnika(Korisnik korisnik)
        {
            _context.Entry(korisnik).State = System.Data.Entity.EntityState.Modified;

            _context.SaveChanges();

            return korisnik;
        }

        public Korisnik PretraziPoUserPass(string userName, string password)
        {
            return _context.Set<Korisnik>().FirstOrDefault(x => x.Email == userName && x.Sifra == password);
        }
    }
}
