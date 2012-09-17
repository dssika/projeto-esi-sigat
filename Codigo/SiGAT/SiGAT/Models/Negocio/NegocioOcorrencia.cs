using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SiGAT.Models.Dados;

namespace SiGAT.Models.Negocio
{
    public class NegocioOcorrencia
    {
        private readonly IRepositorioGenerico<ocorrencia, SiGATEntities> repositorioocorrencia;
        private readonly IRepositorioGenerico<Estado, SiGATEntities> repositorioEstado;
        private readonly IRepositorioGenerico<Cidade, SiGATEntities> repositorioCidade;

        public NegocioOcorrencia()
        {
            repositorioocorrencia = new RepositorioGenerico<ocorrencia, SiGATEntities>("chave");
            repositorioEstado = new RepositorioGenerico<Estado, SiGATEntities>("chave");
            repositorioCidade = new RepositorioGenerico<Cidade, SiGATEntities>("chave");
        }

        public ocorrencia Inserir(ocorrencia ocorrencia)
        {
            repositorioocorrencia.Inserir(ocorrencia);

            if (repositorioocorrencia.SaveChanges() > 0)
                return ocorrencia;
            else
                return null;
        }
        public bool Editar(ocorrencia ocorrencia)
        {
            ocorrencia _ocorrencia = Obter(ocorrencia.idOcorrencia);
            _ocorrencia.condicaotempo = ocorrencia.condicaotempo;
            return repositorioocorrencia.SaveChanges() > 0;
        }

        public List<ocorrencia> ObterTodos()
        {
            return repositorioocorrencia.ObterTodos().ToList();
        }

        public List<Cidade> ObterCidades()
        {
            return repositorioCidade.ObterTodos().ToList();
        }

        public ocorrencia Obter(int codocorrencia)
        {
            return repositorioocorrencia.ObterEntidade(ocorrencia => ocorrencia.idOcorrencia == codocorrencia);
        }

        public List<Estado> ObterEstados()
        {
            return repositorioEstado.ObterTodos().ToList();
        }

        public List<Cidade> ObterCidadePorEstado(int codEstado)
        {
            return null;
        }
    }
}