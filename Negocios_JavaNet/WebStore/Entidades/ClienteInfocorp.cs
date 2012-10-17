using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebStore.Entidades
{
    public class ClienteInfocorp
    {

        public decimal deuda { get; set; }
        public string dni { get; set; }
        public string estadoCivil { get; set; }
        public string fechaNacimiento { get; set; }
        public string nombres { get; set; }
        public string primerApellido { get; set; }
        public string segundoApellido { get; set; }
        public string sexo { get; set; }
        public string ubigeo { get; set; }
    }
}