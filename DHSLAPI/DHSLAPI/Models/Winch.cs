using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class Winch
    {
        public string ID { get; set; }
        public string Type { get; set; }

        public string Weight { get; set; }

        public string Quantity { get; set; }

        public string Note { get; set; }

        public ShipInfo Ship { get; set; }
    }
}
