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
    public class TroteController : Controller
    {
        private SiGATEntities db = new SiGATEntities();

        //
        // GET: /Trote/

        public ViewResult Index()
        {
            var troteset = db.TroteSet.Include("endereco");
            return View(troteset.ToList());
        }

        //
        // GET: /Trote/Details/5

        public ViewResult Details(int id)
        {
            Trote trote = db.TroteSet.Single(t => t.idTrote == id);
            return View(trote);
        }

        //
        // GET: /Trote/Create

        public ActionResult Create()
        {
            ViewBag.idEndereco = new SelectList(db.EnderecoSet, "idEndereco", "logradouro");
            return View();
        } 

        //
        // POST: /Trote/Create

        [HttpPost]
        public ActionResult Create(Trote trote)
        {
            if (ModelState.IsValid)
            {
                db.TroteSet.AddObject(trote);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.idEndereco = new SelectList(db.EnderecoSet, "idEndereco", "logradouro", trote.idEndereco);
            return View(trote);
        }
        
        //
        // GET: /Trote/Edit/5
 
        public ActionResult Edit(int id)
        {
            Trote trote = db.TroteSet.Single(t => t.idTrote == id);
            ViewBag.idEndereco = new SelectList(db.EnderecoSet, "idEndereco", "logradouro", trote.idEndereco);
            return View(trote);
        }

        //
        // POST: /Trote/Edit/5

        [HttpPost]
        public ActionResult Edit(Trote trote)
        {
            if (ModelState.IsValid)
            {
                db.TroteSet.Attach(trote);
                db.ObjectStateManager.ChangeObjectState(trote, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idEndereco = new SelectList(db.EnderecoSet, "idEndereco", "logradouro", trote.idEndereco);
            return View(trote);
        }

        //
        // GET: /Trote/Delete/5
 
        public ActionResult Delete(int id)
        {
            Trote trote = db.TroteSet.Single(t => t.idTrote == id);
            return View(trote);
        }

        //
        // POST: /Trote/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Trote trote = db.TroteSet.Single(t => t.idTrote == id);
            db.TroteSet.DeleteObject(trote);
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