using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class OverviewScrewSystem
    {
        public int Winch { get; set; }

        public int Anchor { get; set; }

        public int Chain { get; set; }

        public string SHIPID { get; set; }

        public int Count {
            get
            {
                return Winch + Anchor + Chain;
            }
        }
    }
}
