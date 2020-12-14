using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RRDiner.Models
{
    public class CharacterSeason
    {
        public int Id { get; set; }
        public int CharacterId { get; set; }
        public int SeasonId { get; set; }

    }
}
