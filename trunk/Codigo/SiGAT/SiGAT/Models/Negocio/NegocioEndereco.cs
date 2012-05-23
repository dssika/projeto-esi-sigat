using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SiGAT.Models.Dados;

namespace SiGAT.Models.Negocio
{
    public class NegocioEndereco
    {
        private readonly IRepositorioGenerico<Endereco, SiGATEntities> repositorioEndereco;
        private readonly IRepositorioGenerico<Estado, SiGATEntities> repositorioEstado;
        private readonly IRepositorioGenerico<Cidade, SiGATEntities> repositorioCidade;

        public NegocioEndereco()
        {
            repositorioEndereco = new RepositorioGenerico<Endereco, SiGATEntities>("chave");
            repositorioEstado = new RepositorioGenerico<Estado, SiGATEntities>("chave");
            repositorioCidade = new RepositorioGenerico<Cidade, SiGATEntities>("chave");
        }

        public Endereco Inserir(Endereco endereco)
        {
            repositorioEndereco.Inserir(endereco);

            if (repositorioEndereco.SaveChanges() > 0)
                return endereco;
            else
                return null;
        }
        public bool Editar(Endereco endereco)
        {
            Endereco _endereco = Obter(endereco.idEndereco);
            _endereco.logradouro = endereco.logradouro;
            return repositorioEndereco.SaveChanges() > 0;
        }

        public List<Endereco> ObterTodos()
        {
            return repositorioEndereco.ObterTodos().ToList();
        }

        public List<Cidade> ObterCidades()
        {
            return repositorioCidade.ObterTodos().ToList();
        }

        public Endereco Obter(int codEndereco)
        {
            return repositorioEndereco.ObterEntidade(endereco => endereco.idEndereco == codEndereco);
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