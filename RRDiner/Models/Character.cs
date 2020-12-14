using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RRDiner.Models
{
    public class Character
    {

        public int Id { get; set; }

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string ImageLocation { get; set; }
        public int Bio { get; set; }
        public List<Season> Seasons { get; set; }
        public List<Quote> Quotes { get; set; }

    }
}
