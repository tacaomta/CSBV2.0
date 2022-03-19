using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class Screw
    {    
        public string Name { get; set; }

        public string Width { get; set; }

        public string BasicDiameter { get; set; }

        public string BehindDiameter { get; set; }

        public string MiddleDiameter { get; set; }

        public string FrontDiameter { get; set; }

        public string Diameter { get; set; }

        public string ID { get; set; }

        public string IMO { get; set; }

        public string Note { get; set; }

        public ShipInfo Ship { get; set; }

        public string Wings { get; set; }
    }
}
