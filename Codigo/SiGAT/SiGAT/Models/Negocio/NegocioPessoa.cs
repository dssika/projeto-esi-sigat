using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SiGAT.Models.Dados;

namespace SiGAT.Models.Negocio
{
    /* classe */
    public class NegocioPessoa
    {
        private readonly IRepositorioGenerico<Pessoa, SiGATEntities> repositorioPessoa;
        private readonly IRepositorioGenerico<Telefone, SiGATEntities> repositirioTelefone;
        private readonly IRepositorioGenerico<Endereco, SiGATEntities> repositorioEndereco;

        public NegocioPessoa()
        {
            repositorioPessoa = new RepositorioGenerico<Pessoa, SiGATEntities>("chave");
            repositorioEndereco = new RepositorioGenerico<Endereco, SiGATEntities>("chave");
            repositirioTelefone = new RepositorioGenerico<Telefone, SiGATEntities>("chave");
        }

//        public bool Inserir(Pessoa pessoa)
//        {
//            Endereco endereco = pessoa.endereco;
//            pessoa.endereco = repositorioEndereco.Inserir(endereco);

//         //   Telefone telefone = new Telefone();
//            //telefone = pessoa.telefone;
////            repositirioTelefone.Inserir(telefone);
            
//            //repositorioPessoa.Inserir(pessoa);
//            return repositorioPessoa.SaveChanges() > 0;
//        }



        public Pessoa Inserir(Pessoa pessoa)
        {
            pessoa.endereco.idCidade = 1;
            repositorioPessoa.Inserir(pessoa);

            if (repositorioPessoa.SaveChanges() > 0)
                return pessoa;
            else
                return null;
        }

        public bool InserirTelefone(Telefone telefone, Int32 idPessoa)
        {
            telefone.idPessoa = idPessoa;
            repositirioTelefone.Inserir(telefone);

            return repositirioTelefone.SaveChanges() > 0;
        }

        public bool Editar(Pessoa pessoa)
        {
            Pessoa _pessoa = Obter(pessoa.idPessoa);
            _pessoa.nome = pessoa.nome;
            _pessoa.cpf = pessoa.cpf;
            _pessoa.cnh = pessoa.cnh;
            _pessoa.email = pessoa.email;
            _pessoa.dataNascimento = pessoa.dataNascimento;
            
            _pessoa.isPM = pessoa.isPM;


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
            repositorioEndereco.Inserir(endereco);
            return repositorioEndereco.SaveChanges() > 0;
        }
    }
}