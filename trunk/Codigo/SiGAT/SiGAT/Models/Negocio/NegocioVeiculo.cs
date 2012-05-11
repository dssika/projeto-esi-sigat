using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SiGAT.Models.Dados;

namespace SiGAT.Models.Negocio
{
    public class NegocioVeiculo
    {
        private readonly IRepositorioGenerico<Veiculo, SiGATEntities> repositorioVeiculo;

        public NegocioVeiculo()
        {
            repositorioVeiculo = new RepositorioGenerico<Veiculo, SiGATEntities>("chave");
        }

        public bool Inserir(Veiculo veiculo)
        {
            veiculo.idProprietario = (Int32) veiculo.idProprietario;
            repositorioVeiculo.Inserir(veiculo);
            return repositorioVeiculo.SaveChanges() > 0;
        }
        public bool Editar(Veiculo veiculo)
        {
            Veiculo _veiculo = Obter(veiculo.idVeiculo);
            _veiculo.renavan = veiculo.renavan;
            _veiculo.placa = veiculo.placa;
            _veiculo.marca = veiculo.marca;
            _veiculo.modelo = veiculo.modelo;
            _veiculo.anoFabricacao = veiculo.anoFabricacao;
            _veiculo.tipo = veiculo.tipo;
            _veiculo.idProprietario = veiculo.idProprietario;

            return repositorioVeiculo.SaveChanges() > 0;
        }

        public bool Remover(Int32 codVeiculo)
        {
            repositorioVeiculo.Remover(veiculo => veiculo.idVeiculo == codVeiculo);
            return repositorioVeiculo.SaveChanges() > 0;
        }

        public List<Veiculo> ObterTodos()
        {
            return repositorioVeiculo.ObterTodos().ToList();
        }

        public Veiculo Obter(int codVeiculo)
        {
            return repositorioVeiculo.ObterEntidade(veiculo => veiculo.idVeiculo == codVeiculo);
        }
    }
}