using Pozoristeee.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pozoristeee.Repository
{
    public class PredstavaRepository : RepositoryBase<Predstava>, IPredstavaRepository
    {
        public PredstavaRepository(Model1Container3 context) : base(context) { }

        public Predstava DodajPredstavu(Predstava predstava)
        {
            _context.Entry(predstava).State = System.Data.Entity.EntityState.Added;

            _context.SaveChanges();

            return predstava;
        }

        public Predstava EditujPredstavu(Predstava predstava)
        {
            _context.Entry(predstava).State = System.Data.Entity.EntityState.Modified;

            _context.SaveChanges();

            return predstava;
        }
    }
}
