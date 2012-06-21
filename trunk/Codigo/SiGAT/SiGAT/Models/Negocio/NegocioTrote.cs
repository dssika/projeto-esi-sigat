using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SiGAT.Models.Dados;

namespace SiGAT.Models.Negocio
{
    public class NegocioTrote
    {        
        private readonly IRepositorioGenerico<Trote, SiGATEntities> repositorioTrote;

        public NegocioTrote()
        {
            repositorioTrote = new RepositorioGenerico<Trote, SiGATEntities>("chave");
        }

        public bool Inserir(Trote trote)
        {
            return true; 
        }
    }
  }











































































