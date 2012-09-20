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
    public class OcorrenciaController : Controller
    {
        private SiGATEntities db = new SiGATEntities();

        //
        // GET: /Ocorrencia/

        public ViewResult Index()
        {
            var ocorrencia = db.ocorrencia.Include("condicaotempo").Include("condicaovia").Include("endereco").Include("sinalizacaovia").Include("tipoocorrencia");
            return View(ocorrencia.ToList());
        }

        //
        // GET: /Ocorrencia/Details/5

        public ViewResult Details(int id)
        {
            ocorrencia ocorrencia = db.ocorrencia.Single(o => o.idOcorrencia == id);
            return View(ocorrencia);
        }

        //
        // GET: /Ocorrencia/Create

        public ActionResult Create()
        {
            ViewBag.idCondicaoTempo = new SelectList(db.CondicaoTempoSet, "idCondicaoTempo", "descricao");
            ViewBag.idCondicaoVia = new SelectList(db.CondicaoViaSet, "idCondicaoVia", "descricao");
            ViewBag.idEndereco = new SelectList(db.EnderecoSet, "idEndereco", "logradouro");
            ViewBag.idSinalizacaoVia = new SelectList(db.SinalizacaoViaSet, "idSinalizacaoVia", "descricao");
            ViewBag.idTipoOcorrencia = new SelectList(db.TipoOcorrenciaSet, "idTipoOcorrencia", "descricao");
            return View();
        } 

        //
        // POST: /Ocorrencia/Create

        [HttpPost]
        public ActionResult Create(ocorrencia ocorrencia)
        {
            if (ModelState.IsValid)
            {
                db.ocorrencia.AddObject(ocorrencia);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.idCondicaoTempo = new SelectList(db.CondicaoTempoSet, "idCondicaoTempo", "descricao", ocorrencia.idCondicaoTempo);
            ViewBag.idCondicaoVia = new SelectList(db.CondicaoViaSet, "idCondicaoVia", "descricao", ocorrencia.idCondicaoVia);
            ViewBag.idEndereco = new SelectList(db.EnderecoSet, "idEndereco", "logradouro", ocorrencia.idEndereco);
            ViewBag.idSinalizacaoVia = new SelectList(db.SinalizacaoViaSet, "idSinalizacaoVia", "descricao", ocorrencia.idSinalizacaoVia);
            ViewBag.idTipoOcorrencia = new SelectList(db.TipoOcorrenciaSet, "idTipoOcorrencia", "descricao", ocorrencia.idTipoOcorrencia);
            return View(ocorrencia);
        }
        
        //
        // GET: /Ocorrencia/Edit/5
 
        public ActionResult Edit(int id)
        {
            ocorrencia ocorrencia = db.ocorrencia.Single(o => o.idOcorrencia == id);
            ViewBag.idCondicaoTempo = new SelectList(db.CondicaoTempoSet, "idCondicaoTempo", "descricao", ocorrencia.idCondicaoTempo);
            ViewBag.idCondicaoVia = new SelectList(db.CondicaoViaSet, "idCondicaoVia", "descricao", ocorrencia.idCondicaoVia);
            ViewBag.idEndereco = new SelectList(db.EnderecoSet, "idEndereco", "logradouro", ocorrencia.idEndereco);
            ViewBag.idSinalizacaoVia = new SelectList(db.SinalizacaoViaSet, "idSinalizacaoVia", "descricao", ocorrencia.idSinalizacaoVia);
            ViewBag.idTipoOcorrencia = new SelectList(db.TipoOcorrenciaSet, "idTipoOcorrencia", "descricao", ocorrencia.idTipoOcorrencia);
            return View(ocorrencia);
        }

        //
        // POST: /Ocorrencia/Edit/5

        [HttpPost]
        public ActionResult Edit(ocorrencia ocorrencia)
        {
            if (ModelState.IsValid)
            {
                db.ocorrencia.Attach(ocorrencia);
                db.ObjectStateManager.ChangeObjectState(ocorrencia, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idCondicaoTempo = new SelectList(db.CondicaoTempoSet, "idCondicaoTempo", "descricao", ocorrencia.idCondicaoTempo);
            ViewBag.idCondicaoVia = new SelectList(db.CondicaoViaSet, "idCondicaoVia", "descricao", ocorrencia.idCondicaoVia);
            ViewBag.idEndereco = new SelectList(db.EnderecoSet, "idEndereco", "logradouro", ocorrencia.idEndereco);
            ViewBag.idSinalizacaoVia = new SelectList(db.SinalizacaoViaSet, "idSinalizacaoVia", "descricao", ocorrencia.idSinalizacaoVia);
            ViewBag.idTipoOcorrencia = new SelectList(db.TipoOcorrenciaSet, "idTipoOcorrencia", "descricao", ocorrencia.idTipoOcorrencia);
            return View(ocorrencia);
        }

        //
        // GET: /Ocorrencia/Delete/5
 
        public ActionResult Delete(int id)
        {
            ocorrencia ocorrencia = db.ocorrencia.Single(o => o.idOcorrencia == id);
            return View(ocorrencia);
        }

        //
        // POST: /Ocorrencia/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            ocorrencia ocorrencia = db.ocorrencia.Single(o => o.idOcorrencia == id);
            db.ocorrencia.DeleteObject(ocorrencia);
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