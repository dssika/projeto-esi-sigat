using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SiGAT.Models.Dados;

namespace SiGAT.Models.Negocio
{
    public class NegocioCidade
    {
        private readonly IRepositorioGenerico<Endereco, SiGATEntities> repositorioEndereco;
        private readonly IRepositorioGenerico<Estado, SiGATEntities> repositorioEstado;
        private readonly IRepositorioGenerico<Cidade, SiGATEntities> repositorioCidade;

        public NegocioCidade()
        {
            repositorioEndereco = new RepositorioGenerico<Endereco, SiGATEntities>("chave");
            repositorioEstado = new RepositorioGenerico<Estado, SiGATEntities>("chave");
            repositorioCidade = new RepositorioGenerico<Cidade, SiGATEntities>("chave");
        }

        public Cidade Inserir(Cidade cidade)
        {
            repositorioCidade.Inserir(cidade);

            if (repositorioCidade.SaveChanges() > 0)
                return cidade;
            else
                return null;
        }
        public bool Editar(Cidade cidade)
        {
            Cidade _cidade = Obter(cidade.idCidade);
            _cidade.nome = cidade.nome;
            return repositorioCidade.SaveChanges() > 0;
        }

        public List<Cidade> ObterTodos()
        {
            return repositorioCidade.ObterTodos().ToList();
        }

        public Cidade Obter(int codCidade)
        {
            return repositorioCidade.ObterEntidade(cidade => cidade.idCidade == codCidade);
        }

        public int ObterId(String nome)
        {
            Cidade c = repositorioCidade.ObterEntidade(cidade => cidade.nome == nome);
            return c.idCidade;
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