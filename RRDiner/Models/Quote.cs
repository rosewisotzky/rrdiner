using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RRDiner.Models
{
    public class Quote
    {
        public int Id { get; set; }
        public int CharacterId { get; set; }
        public Character Character { get; set; }
        public int SeasonId { get; set; }
        public Season Season { get; set; }
        public string Content { get; set; }

    }
}
