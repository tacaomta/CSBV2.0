using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class Chain
    {
        public string ID { get; set; }
        public string Type { get; set; }

        public string Width { get; set; }

        public string Diameter { get; set; }

        public string Note { get; set; }

        public ShipInfo Ship { get; set; }
    }
}
