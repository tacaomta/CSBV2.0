using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class MarineWeapon
    {
        public string ID { get; set; }

        public ShipInfo Ship { get; set; }

        public string Name { get; set; }

        public string Type { get; set; }

        public int Quantity { get; set; }

        public string Origin { get; set; }

        public string Power { get; set; }

        public string Function { get; set; }
    }
}
