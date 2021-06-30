using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pozoristeee.Repository.Interface
{
    public interface IUnitOfWork : IDisposable
    {
        IKorisnikRepository Korisnik { get; }
        IPozoristeRepository Pozoriste { get; }
        IPredstavaRepository Predstava { get; }

        int Complete();
    }
}
