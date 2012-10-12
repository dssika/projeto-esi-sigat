using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using Resources;

namespace SiGAT.Models
{
    public class EnderecoModel
    {
        [Required]
        public int IDEndereco { get; set; }
        //[Required (ErrorMessage = "Por favor, digite um {0}")]
        //[DisplayName("nome do autor")]
        //[StringLength(15, MinimumLength = 5)]
        //[RegularExpression(@"[A-Za-z]",ErrorMessage="O campo nome não aceita valores numericos")]
        [Required(ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_nome_requerido")]
        public string logradouro { get; set; }
        [Required]
        public string bairro { get; set; }
        public int cep { get; set; }

        public CidadeModel cidade { get; set; }

    }
}
