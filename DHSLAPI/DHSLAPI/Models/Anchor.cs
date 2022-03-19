using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class Anchor
    {
        public ShipInfo Ship { get; set; }

        public string ID { get; set; }

        public string Type { get; set; }

        public string Quantity { get; set; }

        public string  Width { get; set; }

        public string Diameter { get; set; }

        public string Load { get; set; }

        public string Note { get; set; }

    }
}
