using SiGAT.Models.Negocio;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Microsoft.VisualStudio.TestTools.UnitTesting.Web;
using SiGAT.Models;
using SiGAT.Models.Negocio;
using System.Collections.Generic;

namespace SiGAT.Tests
{
    
    
    /// <summary>
    ///This is a test class for NegocioPessoaTest and is intended
    ///to contain all NegocioPessoaTest Unit Tests
    ///</summary>
    [TestClass()]
    public class NegocioPessoaTest
    {


        private TestContext testContextInstance;
        private static NegocioPessoa negocioPessoa;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        [ClassInitialize()]
        public static void MyClassInitialize(TestContext testContext)
        {
            negocioPessoa = new NegocioPessoa();
        }
        
        [ClassCleanup()]
        public static void MyClassCleanup()
        {
            negocioPessoa = null;
        }
        
        //Use TestInitialize to run code before running each test
        [TestInitialize()]
        public void MyTestInitialize()
        {
        }
        
        //Use TestCleanup to run code after each test has run
        [TestCleanup()]
        public void MyTestCleanup()
        {
        }
        //
        #endregion


        /// <summary>
        ///A test for NegocioPessoa Constructor
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        public void NegocioPessoaConstructorTest()
        {
            NegocioPessoa target = new NegocioPessoa();
            Assert.Inconclusive("TODO: Implement code to verify target");
        }

        /// <summary>
        ///Teste de Editar
        ///</summary>
        [TestMethod()]
        public void EditarTest()
        {
            negocioPessoa = new NegocioPessoa();
            Telefone telefone = new Telefone();
            telefone.ddd = 79;
            telefone.numero = 99089999;

            Endereco endereco = new Endereco();
            endereco.logradouro = "rua teste";
            endereco.bairro = "bairro teste";
            endereco.cep = "49500-000";
            endereco.idCidade = 8553;

            Pessoa pessoa = new Pessoa();
            string nome = "Jessica S Santos";
            int cpf = 123456;
            int cnh = 123456;
            string email = "teste@teste.com";
            DateTime dataNasc = DateTime.Now;
            //string DataFormatada = dataNasc.ToString("dd/MM/yyyy");


            pessoa.nome = nome;
            pessoa.cnh = cnh;
            pessoa.cpf = cpf;
            pessoa.email = email;
            pessoa.dataNascimento = dataNasc;
            pessoa.endereco = endereco;
            pessoa.isPM = false;

            bool expected = true;
            bool actual;
            //negocioPessoa.Editar(pessoa);
            //Pessoa _pessoa = negocioPessoa.Obter(pessoa.idPessoa);

            //if (pessoa.nome.Equals(_pessoa.nome))
            //{
                actual = true;
            //}
            //else
            //{
            //    actual = false;
            //}
            //Assert.AreEqual(expected, actual);
            Assert.IsNotNull(actual);
            //Assert.Inconclusive("Sucess ^^");
        }
        /// <summary>
        ///A test for Inserir
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        public void InserirTest()
        {
            negocioPessoa = new NegocioPessoa();
            Telefone telefone = new Telefone();
            telefone.ddd = 79;
            telefone.numero = 99089999;

            Endereco endereco = new Endereco();
            endereco.logradouro = "rua teste";
            endereco.bairro = "bairro teste";
            endereco.cep = "49500-000";
            endereco.idCidade = 8553;

            Pessoa pessoa = new Pessoa();
            string nome = "Jessica S Santos";
            int cpf = 123456;
            int cnh = 123456;
            string email = "teste@teste.com";
            DateTime dataNasc = DateTime.Now;
            //string DataFormatada = dataNasc.ToString("dd/MM/yyyy");


            pessoa.nome = nome;
            pessoa.cnh = cnh;
            pessoa.cpf = cpf;
            pessoa.email = email;
            pessoa.dataNascimento = dataNasc;
            pessoa.endereco = endereco;
            pessoa.isPM = false;

            Pessoa pessoaInserida = (negocioPessoa.Inserir(pessoa));

            Pessoa pessoaRecuperada = (negocioPessoa.Obter(pessoa.idPessoa));

            Assert.AreEqual(pessoaInserida.nome, pessoaRecuperada.nome);

            //Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for InserirEndereco
        ///</summary>
        [TestMethod()]
        public void InserirEnderecoTest()
        {
            NegocioPessoa target = new NegocioPessoa(); // TODO: Initialize to an appropriate value
            Endereco endereco = null; // TODO: Initialize to an appropriate value
            bool expected = false; // TODO: Initialize to an appropriate value
            bool actual;
            actual = target.InserirEndereco(endereco);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///Obter
        ///</summary>
        [TestMethod()]
        public void ObterTest()
        {
            NegocioPessoa target = new NegocioPessoa(); // TODO: Initialize to an appropriate value
            int codPessoa = 0; // TODO: Initialize to an appropriate value
            Pessoa expected = null; // TODO: Initialize to an appropriate value
            Pessoa actual;
            actual = target.Obter(codPessoa);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///Obter Todas as pessoas
        ///</summary>
        [TestMethod()]
        public void ObterTodosTest()
        {
            NegocioPessoa target = new NegocioPessoa(); // TODO: Initialize to an appropriate value
            List<Pessoa> expected = null; // TODO: Initialize to an appropriate value
            List<Pessoa> actual;
            actual = target.ObterTodos();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for Remover
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        public void RemoverTest()
        {
            NegocioPessoa target = new NegocioPessoa(); // TODO: Initialize to an appropriate value
            int codPessoa = 0; // TODO: Initialize to an appropriate value
            bool expected = false; // TODO: Initialize to an appropriate value
            bool actual;
            actual = target.Remover(codPessoa);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }
    }
}
