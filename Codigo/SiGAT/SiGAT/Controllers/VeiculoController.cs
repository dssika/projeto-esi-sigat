using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SiGAT.Models;

namespace SiGAT.Controllers
{ 
    public class VeiculoController : Controller
    {
        private SiGATEntities db = new SiGATEntities();

        //
        // GET: /Veiculo/

        public ViewResult Index()
        {
            var veiculo = db.veiculo.Include("pessoa");
            return View(veiculo.ToList());
        }

        //
        // GET: /Veiculo/Details/5

        public ViewResult Details(int id)
        {
            Veiculo veiculo = db.veiculo.Single(v => v.idVeiculo == id);
            return View(veiculo);
        }

        //
        // GET: /Veiculo/Create

        public ActionResult Create()
        {
            ViewBag.idProprietario = new SelectList(db.pessoa, "idPessoa", "nome");
            return View();
        } 

        //
        // POST: /Veiculo/Create

        [HttpPost]
        public ActionResult Create(Veiculo veiculo)
        {
            if (ModelState.IsValid)
            {
                db.veiculo.AddObject(veiculo);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.idProprietario = new SelectList(db.pessoa, "idPessoa", "nome", veiculo.idProprietario);
            return View(veiculo);
        }
        
        //
        // GET: /Veiculo/Edit/5
 
        public ActionResult Edit(int id)
        {
            Veiculo veiculo = db.veiculo.Single(v => v.idVeiculo == id);
            ViewBag.idProprietario = new SelectList(db.pessoa, "idPessoa", "nome", veiculo.idProprietario);
            return View(veiculo);
        }

        //
        // POST: /Veiculo/Edit/5

        [HttpPost]
        public ActionResult Edit(Veiculo veiculo)
        {
            if (ModelState.IsValid)
            {
                db.veiculo.Attach(veiculo);
                db.ObjectStateManager.ChangeObjectState(veiculo, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idProprietario = new SelectList(db.pessoa, "idPessoa", "nome", veiculo.idProprietario);
            return View(veiculo);
        }

        //
        // GET: /Veiculo/Delete/5
 
        public ActionResult Delete(int id)
        {
            Veiculo veiculo = db.veiculo.Single(v => v.idVeiculo == id);
            return View(veiculo);
        }

        //
        // POST: /Veiculo/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Veiculo veiculo = db.veiculo.Single(v => v.idVeiculo == id);
            db.veiculo.DeleteObject(veiculo);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}