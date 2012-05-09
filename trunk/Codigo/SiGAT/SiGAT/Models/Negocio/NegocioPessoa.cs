using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SiGAT.Models.Dados;

namespace SiGAT.Models.Negocio
{
    public class NegocioPessoa
    {
        private readonly IRepositorioGenerico<Pessoa, SiGATEntities> repositorioPessoa;

        public NegocioPessoa()
        {
            repositorioPessoa = new RepositorioGenerico<Pessoa, SiGATEntities>("chave");
        }

        public bool Inserir(Pessoa pessoa)
        {

            repositorioPessoa.Inserir(pessoa);
            return repositorioPessoa.SaveChanges() > 0;
        }
        public bool Editar(Pessoa pessoa)
        {
            Pessoa _pessoa = Obter(pessoa.idPessoa);
            _pessoa.nome = pessoa.nome;
            _pessoa.cpf = pessoa.cpf;
            return repositorioPessoa.SaveChanges() > 0;
        }

        public bool Remover(Int32 codPessoa)
        {
            repositorioPessoa.Remover(pessoa => pessoa.idPessoa == codPessoa);
            return repositorioPessoa.SaveChanges() > 0;
        }

        public List<Pessoa> ObterTodos()
        {
            return repositorioPessoa.ObterTodos().ToList();
        }

        public Pessoa Obter(int codPessoa)
        {
            return repositorioPessoa.ObterEntidade(pessoa => pessoa.idPessoa == codPessoa);
        }


        public bool InserirEndereco(Endereco endereco)
        {
            return repositorioPessoa.SaveChanges() > 0;
        }
    }
}