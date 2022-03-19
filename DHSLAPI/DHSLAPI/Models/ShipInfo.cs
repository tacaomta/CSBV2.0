using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class ShipInfo
    {
        public string ID { get; set; }

        public string Image { get; set; }

        public string Name { get; set; }

        public string RegistrationNumber { get; set; }

        public string Weight { get; set; }

        public string Fuel { get; set; }

        public string Water { get; set; }

        public int Personel { get; set; }

        public CaptainInfo Captain { get; set; }

        public string Speed { get; set; }

        public string Time { get; set; }

        public int LaunchYear { get; set; }

        public int Region { get; set; }

        public string RegistrationDate { get; set; }

        public string RegistrationPlace { get; set; }

        public string Width { get; set; }

        public string Wide { get; set; }

        public string Draught { get; set; }

        public string Material { get; set; }

        public string Created { get; set; }

        public string Updated { get; set; }
    }
}
