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
    public class PessoaController : Controller
    {
        private SiGATEntities db = new SiGATEntities();

        //
        // GET: /Pessoa/

        public ViewResult Index()
        {
            var pessoa = db.pessoa.Include("endereco").Include("telefone");
            return View(pessoa.ToList());
        }

        //
        // GET: /Pessoa/Details/5

        public ViewResult Details(int id)
        {
            Pessoa pessoa = db.pessoa.Single(p => p.idPessoa == id);
            return View(pessoa);
        }

        //
        // GET: /Pessoa/Create

        public ActionResult Create()
        {
            ViewBag.idEndereco = new SelectList(db.endereco, "idEndereco", "logradouro");
            ViewBag.idTelefone = new SelectList(db.telefone, "idTelefone", "idTelefone");
            return View();
        } 

        //
        // POST: /Pessoa/Create

        [HttpPost]
        public ActionResult Create(Pessoa pessoa)
        {
            if (ModelState.IsValid)
            {
                db.pessoa.AddObject(pessoa);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.idEndereco = new SelectList(db.endereco, "idEndereco", "logradouro", pessoa.idEndereco);
            ViewBag.idTelefone = new SelectList(db.telefone, "idTelefone", "idTelefone", pessoa.idTelefone);
            return View(pessoa);
        }
        
        //
        // GET: /Pessoa/Edit/5
 
        public ActionResult Edit(int id)
        {
            Pessoa pessoa = db.pessoa.Single(p => p.idPessoa == id);
            ViewBag.idEndereco = new SelectList(db.endereco, "idEndereco", "logradouro", pessoa.idEndereco);
            ViewBag.idTelefone = new SelectList(db.telefone, "idTelefone", "idTelefone", pessoa.idTelefone);
            return View(pessoa);
        }

        //
        // POST: /Pessoa/Edit/5

        [HttpPost]
        public ActionResult Edit(Pessoa pessoa)
        {
            if (ModelState.IsValid)
            {
                db.pessoa.Attach(pessoa);
                db.ObjectStateManager.ChangeObjectState(pessoa, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idEndereco = new SelectList(db.endereco, "idEndereco", "logradouro", pessoa.idEndereco);
            ViewBag.idTelefone = new SelectList(db.telefone, "idTelefone", "idTelefone", pessoa.idTelefone);
            return View(pessoa);
        }

        //
        // GET: /Pessoa/Delete/5
 
        public ActionResult Delete(int id)
        {
            Pessoa pessoa = db.pessoa.Single(p => p.idPessoa == id);
            return View(pessoa);
        }

        //
        // POST: /Pessoa/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Pessoa pessoa = db.pessoa.Single(p => p.idPessoa == id);
            db.pessoa.DeleteObject(pessoa);
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