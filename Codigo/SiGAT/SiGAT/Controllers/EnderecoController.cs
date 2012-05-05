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
            var endereco = db.endereco.Include("cidade");
            return View(endereco.ToList());
        }

        //
        // GET: /Endereco/Details/5

        public ViewResult Details(int id)
        {
            endereco endereco = db.endereco.Single(e => e.idEndereco == id);
            return View(endereco);
        }

        //
        // GET: /Endereco/Create

        public ActionResult Create()
        {
            ViewBag.idCidade = new SelectList(db.cidade, "idCidade", "nome");
            return View();
        } 

        //
        // POST: /Endereco/Create

        [HttpPost]
        public ActionResult Create(endereco endereco)
        {
            if (ModelState.IsValid)
            {
                db.endereco.AddObject(endereco);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.idCidade = new SelectList(db.cidade, "idCidade", "nome", endereco.idCidade);
            return View(endereco);
        }
        
        //
        // GET: /Endereco/Edit/5
 
        public ActionResult Edit(int id)
        {
            endereco endereco = db.endereco.Single(e => e.idEndereco == id);
            ViewBag.idCidade = new SelectList(db.cidade, "idCidade", "nome", endereco.idCidade);
            return View(endereco);
        }

        //
        // POST: /Endereco/Edit/5

        [HttpPost]
        public ActionResult Edit(endereco endereco)
        {
            if (ModelState.IsValid)
            {
                db.endereco.Attach(endereco);
                db.ObjectStateManager.ChangeObjectState(endereco, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idCidade = new SelectList(db.cidade, "idCidade", "nome", endereco.idCidade);
            return View(endereco);
        }

        //
        // GET: /Endereco/Delete/5
 
        public ActionResult Delete(int id)
        {
            endereco endereco = db.endereco.Single(e => e.idEndereco == id);
            return View(endereco);
        }

        //
        // POST: /Endereco/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            endereco endereco = db.endereco.Single(e => e.idEndereco == id);
            db.endereco.DeleteObject(endereco);
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