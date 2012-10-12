using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SiGAT.Models.Dados;

namespace SiGAT.Models.Negocio
{
    public class NegocioTelefone
    {
        private readonly IRepositorioGenerico<Pessoa, SiGATEntities> repositorioPessoa;
        private readonly IRepositorioGenerico<Telefone, SiGATEntities> repositorioTelefone;

        public NegocioTelefone()
        {
            repositorioPessoa = new RepositorioGenerico<Pessoa, SiGATEntities>("chave");
            repositorioTelefone = new RepositorioGenerico<Telefone, SiGATEntities>("chave");
        }

        public Telefone Inserir(Telefone telefone)
        {
            repositorioTelefone.Inserir(telefone);

            if (repositorioTelefone.SaveChanges() > 0)
                return telefone;
            else
                return null;
        }
        public bool Editar(Telefone telefone)
        {
            Telefone _telefone= Obter(telefone.idTelefone);

            _telefone.ddd = telefone.ddd;
            _telefone.numero = telefone.numero;
            _telefone.idPessoa = telefone.idPessoa;
            return repositorioTelefone.SaveChanges() > 0;
        }

        public List<Telefone> ObterTodos()
        {
            return repositorioTelefone.ObterTodos().ToList();
        }

        
        public Telefone Obter(int codTelefone)
        {
            return repositorioTelefone.ObterEntidade(telefone => telefone.idTelefone == codTelefone);
        }


        public List<Cidade> ObterCidadePorEstado(int codEstado)
        {
            return null;
        }

    }
}