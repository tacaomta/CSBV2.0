using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class OverviewInfo
    {
        public ShipInfo Ship { get; set; }

        public int MainEngine { get; set; }

        public int SecondaryEngine { get; set; }

        public int Screw { get; set; }

        public int Weapon { get; set; }

        public int MotoBoat { get; set; }

        public int Anchor { get; set; }

        public int LifeSaving { get; set; }

        public int Other { get; set; }

        public int Supplies { get; set; }
    }
}
