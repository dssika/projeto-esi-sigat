using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using Resources;

namespace SiGAT.Models
{
    public class PessoaModel
    {
        [Required]
        public int IDPessoa { get; set; }
        //[Required (ErrorMessage = "Por favor, digite um {0}")]
        //[DisplayName("nome do autor")]
        //[StringLength(15, MinimumLength = 5)]
        //[RegularExpression(@"[A-Za-z]",ErrorMessage="O campo nome não aceita valores numericos")]
        [Required(ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_nome_requerido")]
        public string nome { get; set; }
        [Required]
        public int cnh { get; set; }
        [Required]
        public int cpf { get; set; }
        [Required]
        public string email { get; set; }
        [Required]
        public DateTime dataNascimento { get; set; }
        
        public string logradouro{ get; set; }
        public string bairro{ get; set; }
        public string cep{ get; set; }

        [Required]
        public bool isPM { get; set; }
    }
}
