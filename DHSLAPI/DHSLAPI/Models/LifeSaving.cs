using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class LifeSaving
    {
        public ShipInfo Ship { get; set; }
        public string Type { get; set; }

        public string Origin { get; set; }

        public string State { get; set; }

        public string Quantity { get; set; }

        public string Unit { get; set; }

        public String Note { get; set; }
        public string ID { get; set; }       
    }

    public class OtherEquipment:LifeSaving
    {

    }

    public class Supply:LifeSaving
    {
        public string Code { get; set; }
    }
}
