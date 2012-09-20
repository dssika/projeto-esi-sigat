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
    public class TelefoneController : Controller
    {
        private SiGATEntities db = new SiGATEntities();

        //
        // GET: /Telefone/

        public ViewResult Index()
        {
            var telefoneset = db.TelefoneSet.Include("pessoa");
            return View(telefoneset.ToList());
        }

        //
        // GET: /Telefone/Details/5

        public ViewResult Details(int id)
        {
            Telefone telefone = db.TelefoneSet.Single(t => t.idTelefone == id);
            return View(telefone);
        }

        //
        // GET: /Telefone/Create

        public ActionResult Create()
        {
            ViewBag.idPessoa = new SelectList(db.PessoaSet, "idPessoa", "nome");
            return View();
        } 

        //
        // POST: /Telefone/Create

        [HttpPost]
        public ActionResult Create(Telefone telefone)
        {
            if (ModelState.IsValid)
            {
                db.TelefoneSet.AddObject(telefone);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.idPessoa = new SelectList(db.PessoaSet, "idPessoa", "nome", telefone.idPessoa);
            return View(telefone);
        }
        
        //
        // GET: /Telefone/Edit/5
 
        public ActionResult Edit(int id)
        {
            Telefone telefone = db.TelefoneSet.Single(t => t.idTelefone == id);
            ViewBag.idPessoa = new SelectList(db.PessoaSet, "idPessoa", "nome", telefone.idPessoa);
            return View(telefone);
        }

        //
        // POST: /Telefone/Edit/5

        [HttpPost]
        public ActionResult Edit(Telefone telefone)
        {
            if (ModelState.IsValid)
            {
                db.TelefoneSet.Attach(telefone);
                db.ObjectStateManager.ChangeObjectState(telefone, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idPessoa = new SelectList(db.PessoaSet, "idPessoa", "nome", telefone.idPessoa);
            return View(telefone);
        }

        //
        // GET: /Telefone/Delete/5
 
        public ActionResult Delete(int id)
        {
            Telefone telefone = db.TelefoneSet.Single(t => t.idTelefone == id);
            return View(telefone);
        }

        //
        // POST: /Telefone/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Telefone telefone = db.TelefoneSet.Single(t => t.idTelefone == id);
            db.TelefoneSet.DeleteObject(telefone);
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