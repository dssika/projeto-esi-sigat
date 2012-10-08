using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using Resources;

namespace SiGAT.Models
{
    public class CidadeModel
    {
        [Required]
        public int idCidade { get; set; }
        public int idEstado { get; set; }
        [Required]
        public string nome { get; set; }
    }
}
