using SiGAT.Models.Negocio;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Microsoft.VisualStudio.TestTools.UnitTesting.Web;
using SiGAT.Models;
using System.Collections.Generic;

namespace SiGAT.Tests
{
    
    
    /// <summary>
    ///Testes da classe NegocioPessoa
    ///</summary>
    [TestClass()]
    public class NegocioPessoaTest
    {


        private TestContext testContextInstance;
        
        /// <summary>
        ///Teste de Editar
        ///</summary>
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("C:\\Users\\Jessica\\Desktop\\projeto-esi-sigat\\trunk\\Codigo\\SiGAT\\SiGAT", "/")]
        [UrlToTest("http://localhost:61153/")]
        public void EditarTest()
        {
            
            NegocioPessoa target = new NegocioPessoa();
            Telefone telefone = new Telefone();
            telefone.ddd = 79;
            telefone.numero = 99089999;

            Endereco endereco = new Endereco();


            Pessoa pessoa = new Pessoa();
            string nome = "Jessica S Santos";
            int cpf = 123456;
            string email = "teste@teste.com";
            DateTime dataNasc = DateTime.Now;
            //string DataFormatada = dataNasc.ToString("dd/MM/yyyy");
            
            pessoa.nome = nome;
            pessoa.cpf = cpf;
            pessoa.email = email;
            pessoa.dataNascimento = dataNasc;

            

            pessoa.
            
            bool expected = false;
            bool actual;
            actual = target.Editar(pessoa);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Sucess ^^");
        }

        /// <summary>
        ///Teste de Inserir
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("C:\\Users\\Jessica\\Desktop\\projeto-esi-sigat\\trunk\\Codigo\\SiGAT\\SiGAT", "/")]
        [UrlToTest("http://localhost:61153/")]
        public void InserirTest()
        {
            NegocioPessoa target = new NegocioPessoa(); 

            Pessoa pessoa = null; 
            Pessoa expected = null; 
            Pessoa actual;
            actual = target.Inserir(pessoa);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Sucess ^^");
        }

        /// <summary>
        ///A test for InserirEndereco
        ///</summary>
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("C:\\Users\\Jessica\\Desktop\\projeto-esi-sigat\\trunk\\Codigo\\SiGAT\\SiGAT", "/")]
        [UrlToTest("http://localhost:61153/")]
        public void InserirEnderecoTest()
        {
            NegocioPessoa target = new NegocioPessoa(); // TODO: Initialize to an appropriate value
            Endereco endereco = null; // TODO: Initialize to an appropriate value
            bool expected = false; // TODO: Initialize to an appropriate value
            bool actual;
            actual = target.InserirEndereco(endereco);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Sucess ^^");
        }

        /// <summary>
        ///Obter
        ///</summary>
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("C:\\Users\\Jessica\\Desktop\\projeto-esi-sigat\\trunk\\Codigo\\SiGAT\\SiGAT", "/")]
        [UrlToTest("http://localhost:61153/")]
        public void ObterTest()
        {
            NegocioPessoa target = new NegocioPessoa();
            int codPessoa = 0;
            Pessoa expected = null;
            Pessoa actual;
            actual = target.Obter(codPessoa);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Sucess ^^");
        }

        /// <summary>
        ///Obter Todas as pessoas
        ///</summary>
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("C:\\Users\\Jessica\\Desktop\\projeto-esi-sigat\\trunk\\Codigo\\SiGAT\\SiGAT", "/")]
        [UrlToTest("http://localhost:61153/")]
        public void ObterTodosTest()
        {
            NegocioPessoa target = new NegocioPessoa(); 
            List<Pessoa> expected = null; 
            List<Pessoa> actual;
            actual = target.ObterTodos();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Sucess ^^");
        }

        /// <summary>
        ///Teste de Remover
        ///</summary>
        
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("C:\\Users\\Jessica\\Desktop\\projeto-esi-sigat\\trunk\\Codigo\\SiGAT\\SiGAT", "/")]
        [UrlToTest("http://localhost:61153/")]
        public void RemoverTest()
        {
            NegocioPessoa target = new NegocioPessoa(); 
            int codPessoa = 0; 
            bool expected = false;
            bool actual;
            actual = target.Remover(codPessoa);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Sucess ^^");
        }
    }
}
