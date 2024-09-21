using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoffeeSuppliers
{
    internal class Program
    {
        static void Main(string[] args)
        {
            VeriModeli vm = new VeriModeli();
            List<Kahveler> kahvelers = new List<Kahveler>();
            Console.WriteLine("Aksaray Kahvecisi Stok Sistemine Hoşgeldiniz");

            for (int i = 0; i < kahvelers.Count; i++)
            {
                Kahveler k = kahvelers[i];
                Console.WriteLine($"{k.ID}) {k.Isim} {k.Satici} {k.UreticiUlke} {k.stok} {k.fiyat}");
            }
        }
    }
}
