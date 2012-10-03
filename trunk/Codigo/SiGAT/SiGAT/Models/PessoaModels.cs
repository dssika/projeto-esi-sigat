using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SiGAT.Models
{
    public class PessoaModel
    {
        public int cnh { get;set; }
        public int cpf { get; set; }
        public string nome { get; set; }
        public string email { get; set; }
        
    }
}
