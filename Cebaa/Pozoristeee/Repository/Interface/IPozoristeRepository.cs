using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pozoristeee.Repository.Interface
{
    public interface IPozoristeRepository : IRepositoryBase<Pozoriste>
    {
        Pozoriste DodajPozoriste(Pozoriste pozoriste);
        Pozoriste EditujPozoriste(Pozoriste pozoriste);
        void ObrisiPozoriste(Pozoriste pozoriste);
        List<Pozoriste> IzlistajSvaPozorista();
        List<Pozoriste> IzlistajPozoristaPoMenadzeru(int menadzerId);
    }
}
