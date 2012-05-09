using System;
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
    public class VeiculoController : Controller
    {
        private NegocioVeiculo negocioveiculo = new NegocioVeiculo();

        //
        // GET: /Veiculo/

        public ViewResult Index()
        {
            return View(negocioveiculo.ObterTodos());
        }

        //
        // GET: /Veiculo/Details/5

        public ViewResult Details(int id)
        {
            Veiculo veiculo = negocioveiculo.Obter(id);
            return View(veiculo);
        }

        //
        // GET: /Veiculo/Create

        public ActionResult Create()
        {
            //ViewBag.idProprietario = new SelectList(db.pessoa, "idPessoa", "nome");
            return View();
        } 

        //
        // POST: /Veiculo/Create

        [HttpPost]
        public ActionResult Create(Veiculo veiculo)
        {
            if (ModelState.IsValid)
            {
                negocioveiculo.Inserir(veiculo);
                return RedirectToAction("Index");  
            }

            //ViewBag.idProprietario = new SelectList(db.pessoa, "idPessoa", "nome", veiculo.idProprietario);
            return View(veiculo);
        }
        
        //
        // GET: /Veiculo/Edit/5
 
        public ActionResult Edit(int id)
        {
            
            Veiculo veiculo = negocioveiculo.Obter(id);
            return View(veiculo);
        }

        //
        // POST: /Veiculo/Edit/5

        [HttpPost]
        public ActionResult Edit(Veiculo veiculo)
        {
            if (ModelState.IsValid)
            {
                negocioveiculo.Editar(veiculo);
                return RedirectToAction("Index");
            }
            //ViewBag.idProprietario = new SelectList(db.pessoa, "idPessoa", "nome", veiculo.idProprietario);
            return View(veiculo);
        }

        //
        // GET: /Veiculo/Delete/5
 
        public ActionResult Delete(int id)
        {
            Veiculo veiculo = negocioveiculo.Obter(id);
            return View(veiculo);
        }

        //
        // POST: /Veiculo/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            negocioveiculo.Remover(id);
            return RedirectToAction("Index");
        }
    }
}