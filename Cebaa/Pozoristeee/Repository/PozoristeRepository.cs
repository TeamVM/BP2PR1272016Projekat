using Pozoristeee.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pozoristeee.Repository
{
    public class PozoristeRepository : RepositoryBase<Pozoriste>, IPozoristeRepository
    {
        public PozoristeRepository(Model1Container3 context) : base(context) { }

        public Pozoriste DodajPozoriste(Pozoriste pozoriste)
        {
            _context.Entry(pozoriste).State = System.Data.Entity.EntityState.Added;

            _context.SaveChanges();

            return pozoriste;
        }

        public Pozoriste EditujPozoriste(Pozoriste pozoriste)
        {
            _context.Entry(pozoriste).State = System.Data.Entity.EntityState.Modified;

            _context.SaveChanges();

            return pozoriste;
        }

        public void ObrisiPozoriste(Pozoriste pozoriste)
        {
            _context.Entry(pozoriste).State = System.Data.Entity.EntityState.Deleted;

            _context.SaveChanges();
        }

        public List<Pozoriste> IzlistajSvaPozorista()
        {
            List<Pozoriste> pozorista = (_context as Model1Container3).Pozoristes.ToList();

            return pozorista;
        }

        public List<Pozoriste> IzlistajPozoristaPoMenadzeru(int menadzerId)
        {
            List<Pozoriste> pozorista = (_context as Model1Container3).Pozoristes.Where(x => x.Korisnik.Id == menadzerId).Select(x => x).ToList();

            return pozorista;
        }
    }
}
