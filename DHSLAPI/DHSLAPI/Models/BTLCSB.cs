using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class ShipRow
    {
        public string NameRegion { get; set; }

        public List<MainEngine> EngineInfo{ get; set; }
    }
}
