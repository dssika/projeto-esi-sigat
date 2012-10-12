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
    public class EnderecoController : Controller
    {
        private SiGATEntities db = new SiGATEntities();

        //
        // GET: /Endereco/

        public ViewResult Index()
        {
            var enderecoset = db.EnderecoSet.Include("cidade");
            return View(enderecoset.ToList());
        }

        //
        // GET: /Endereco/Details/5

        public ViewResult Details(int id)
        {
            Endereco endereco = db.EnderecoSet.Single(e => e.idEndereco == id);
            return View(endereco);
        }

        //
        // GET: /Endereco/Create

        public ActionResult Create()
        {
            ViewBag.idCidade = new SelectList(db.CidadeSet, "idCidade", "nome");
            return View();
        } 

        //
        // POST: /Endereco/Create

        [HttpPost]
        public ActionResult Create(Endereco endereco)
        {
            if (ModelState.IsValid)
            {
                db.EnderecoSet.AddObject(endereco);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.idCidade = new SelectList(db.CidadeSet, "idCidade", "nome", endereco.idCidade);
            return View(endereco);
        }
        
        //
        // GET: /Endereco/Edit/5
 
        public ActionResult Edit(int id)
        {
            Endereco endereco = db.EnderecoSet.Single(e => e.idEndereco == id);
            ViewBag.idCidade = new SelectList(db.CidadeSet, "idCidade", "nome", endereco.idCidade);
            return View(endereco);
        }

        //
        // POST: /Endereco/Edit/5

        [HttpPost]
        public ActionResult Edit(Endereco endereco)
        {
            if (ModelState.IsValid)
            {
                db.EnderecoSet.Attach(endereco);
                db.ObjectStateManager.ChangeObjectState(endereco, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idCidade = new SelectList(db.CidadeSet, "idCidade", "nome", endereco.idCidade);
            return View(endereco);
        }

        //
        // GET: /Endereco/Delete/5
 
        public ActionResult Delete(int id)
        {
            Endereco endereco = db.EnderecoSet.Single(e => e.idEndereco == id);
            return View(endereco);
        }

        //
        // POST: /Endereco/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Endereco endereco = db.EnderecoSet.Single(e => e.idEndereco == id);
            db.EnderecoSet.DeleteObject(endereco);
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