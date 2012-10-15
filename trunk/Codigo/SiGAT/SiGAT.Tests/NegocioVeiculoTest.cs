using SiGAT.Models.Negocio;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Microsoft.VisualStudio.TestTools.UnitTesting.Web;
using SiGAT.Models;
using System.Collections.Generic;

namespace SiGAT.Tests
{
    
    
    /// <summary>
    ///Teste da Classe NegocioVeiculo
    ///</summary>
    [TestClass()]
    public class NegocioVeiculoTest
    {
        private TestContext testContextInstance;
        private static NegocioVeiculo negocioVeiculo;
        private static NegocioPessoa negocioPessoa;
        private static NegocioEndereco negocioEndereco;
        private int idVeiculo;

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
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for NegocioVeiculo Constructor
        ///</summary>
        public void NegocioVeiculoConstructorTest()
        {
            NegocioVeiculo target = new NegocioVeiculo();
            Assert.Inconclusive("TODO: Implement code to verify target");
        }

        /// <summary>
        ///A test for Editar
        ///</summary>
        [TestMethod()]
        public void EditarTest()
        {
            NegocioVeiculo target = new NegocioVeiculo(); // TODO: Initialize to an appropriate value
            Veiculo veiculo = null; // TODO: Initialize to an appropriate value
            bool expected = false; // TODO: Initialize to an appropriate value
            bool actual;
            actual = target.Editar(veiculo);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for Inserir
        ///</summary>
        [TestMethod()]
        public void InserirTest()
        {

            Pessoa pessoa = new Pessoa();
            pessoa = negocioPessoa.Obter(1);
            
            Veiculo veiculo = new Veiculo();
            veiculo.renavan = 123;
            veiculo.marca = "Fiat";
            veiculo.modelo = "Uno";
            veiculo.tipo = "Automóvel";
            veiculo.placa = "HZZ-1234";
            veiculo.anoFabricacao = 2012;
            veiculo.pessoa = pessoa;

            Assert.IsTrue(negocioVeiculo.Inserir(veiculo));
            Veiculo retorno = negocioVeiculo.Obter(veiculo.idVeiculo);
            idVeiculo = retorno.idVeiculo;

            Assert.AreEqual(veiculo.renavan, retorno.renavan);
            Assert.AreEqual(veiculo.marca, retorno.marca);
            Assert.AreEqual(veiculo.modelo, retorno.modelo);
            Assert.AreEqual(veiculo.tipo, retorno.tipo);
            Assert.AreEqual(veiculo.placa, retorno.placa);
            Assert.AreEqual(veiculo.anoFabricacao, retorno.anoFabricacao);
            Assert.AreEqual(veiculo.idProprietario, retorno.idProprietario);

        }

        /// <summary>
        ///A test for Obter
        ///</summary>
        [TestMethod()]
        public void ObterTest()
        {
            NegocioVeiculo target = new NegocioVeiculo(); // TODO: Initialize to an appropriate value
            int codVeiculo = 0; // TODO: Initialize to an appropriate value
            Veiculo expected = null; // TODO: Initialize to an appropriate value
            Veiculo actual;
            actual = target.Obter(codVeiculo);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for ObterTodos
        ///</summary>
        public void ObterTodosTest()
        {
            NegocioVeiculo target = new NegocioVeiculo(); // TODO: Initialize to an appropriate value
            List<Veiculo> expected = null; // TODO: Initialize to an appropriate value
            List<Veiculo> actual;
            actual = target.ObterTodos();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for Remover
        ///</summary>
        [TestMethod()]
        public void RemoverTest()
        {
            NegocioVeiculo target = new NegocioVeiculo(); // TODO: Initialize to an appropriate value
            int codVeiculo = 0; // TODO: Initialize to an appropriate value
            bool expected = false; // TODO: Initialize to an appropriate value
            bool actual;
            actual = target.Remover(codVeiculo);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

       
    }
}
