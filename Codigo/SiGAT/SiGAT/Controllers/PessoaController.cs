﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SiGAT.Models;
using SiGAT.Models.Negocio;

namespace SiGAT.Controllers
{
    public class PessoaController : Controller
    {
        private NegocioPessoa negocioPessoa = new NegocioPessoa();
        private NegocioEndereco negocioEndereco = new NegocioEndereco();

        //
        // GET: /Pessoa/

        public ViewResult Index()
        {
            
            return View(negocioPessoa.ObterTodos().ToList());
        }

        //
        // GET: /Pessoa/Details/5

        public ViewResult Details(int id)
        {
            Pessoa pessoa = negocioPessoa.Obter(id);
            return View(pessoa);
        }

        //
        // GET: /Pessoa/Create

        public ActionResult Create()
        {
            ViewBag.idEstado = new SelectList(negocioEndereco.ObterEstados().ToList(), "idEstado", "Nome");
            ViewBag.idCidade = new SelectList(negocioEndereco.ObterCidades().ToList(), "idCidade", "Nome");
            return View();
        }

        //
        // POST: /Pessoa/Create

        [HttpPost]
        public ActionResult Create(Pessoa pessoa)
        {
            if (ModelState.IsValid)
            {
                negocioPessoa.Inserir(pessoa);

                return RedirectToAction("Index");
            }

            ViewBag.idEstado = new SelectList(negocioEndereco.ObterEstados().ToList(), "idEstado", "Nome");
            ViewBag.idCidade = new SelectList(negocioEndereco.ObterCidades().ToList(), "idCidade", "Nome", pessoa.endereco.idCidade);
            return View(pessoa);
        }

        //
        // GET: /Pessoa/Edit/5

        public ActionResult Edit(int id)
        {
            Pessoa pessoa = negocioPessoa.Obter(id);
            return View(pessoa);
        }

        //
        // POST: /Pessoa/Edit/5

        [HttpPost]
        public ActionResult Edit(Pessoa pessoa)
        {
            if (ModelState.IsValid)
            {
                negocioPessoa.Editar(pessoa);
                return RedirectToAction("Index");
            }
            return View(pessoa);
        }

        //
        // GET: /Pessoa/Delete/5

        public ActionResult Delete(int id)
        {
            Pessoa pessoa = negocioPessoa.Obter(id);
            return View(pessoa);
        }

        //
        // POST: /Pessoa/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            negocioPessoa.Remover(id);
            return RedirectToAction("Index");
        }

    }
}