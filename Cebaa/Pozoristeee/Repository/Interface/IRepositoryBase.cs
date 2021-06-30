using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pozoristeee.Repository.Interface
{
    public interface IRepositoryBase<TEntity> where TEntity : class
    {
        TEntity Get(int id);
        List<TEntity> GetAll();

        void Add(TEntity entity);

        void Remove(int id);

        void Update(TEntity entityToUpdate);

        bool SaveChanges();
    }
}
