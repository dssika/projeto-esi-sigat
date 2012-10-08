using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using Resources;

namespace SiGAT.Models
{
    public class VeiculoModel
    {
        public int idVeiculo { get; set; }

        [Required(ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_campo_requerido")]
        [StringLength(11, ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_limite_caracteres")]
        public int renavan { get; set; }

        [Required(ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_campo_requerido")]
        [StringLength(20, ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_limite_caracteres")]
        public string placa { get; set; }

        [Required(ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_campo_requerido")]
        [StringLength(7, ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_limite_caracteres")]
        public string marca { get; set; }

        [Required(ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_campo_requerido")]
        public string modelo { get; set; }

        [Required(ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_campo_requerido")]
        public int anoFabricacao { get; set; }

        [Required(ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_campo_requerido")]
        public string tipo { get; set; }

        [Required(ErrorMessageResourceType = typeof(Mensagem), ErrorMessageResourceName = "erro_campo_requerido")]
        public int idProprietario { get; set; }
    }
}