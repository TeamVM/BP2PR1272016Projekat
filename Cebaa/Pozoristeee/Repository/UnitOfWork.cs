using Pozoristeee.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pozoristeee.Repository
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly Model1Container3 _context;

        public UnitOfWork(Model1Container3 context)
        {
            _context = context;
            Korisnik = new KorisnikRepository(context);
            Pozoriste = new PozoristeRepository(context);
            Predstava = new PredstavaRepository(context);
        }
        public IKorisnikRepository Korisnik { get; set; }
        public IPozoristeRepository Pozoriste { get; set; }
        public IPredstavaRepository Predstava { get; set; }
        public ISalaRepository Sala { get; set; }
       

        public int Complete()
        {
            return _context.SaveChanges();
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
