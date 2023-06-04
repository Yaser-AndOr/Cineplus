using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Cineplus;

namespace Cineplus.Controllers
{
    public class RankingsController : Controller
    {
        private CineEntities db = new CineEntities();

        // GET: Rankings
        public ActionResult Index()
        {
            var rankings = db.Rankings.Include(r => r.Pelicula);
            return View(rankings.ToList());
        }
        public ActionResult Rankear(int Puntaje, int idPeli)
        {
            var Rankedit = db.Rankings.FirstOrDefault(x => x.IDPelicula == idPeli);
            if(Rankedit != null)
            {
                int votos = Rankedit == null ? 0 : (int)Rankedit.NoVotos;
                int puntaje = Rankedit == null ? 0 : (int)Rankedit.Puntaje;
                Rankedit.Puntaje = (puntaje * votos + Puntaje) / (votos + 1);
                Rankedit.NoVotos++;
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }

        // GET: Rankings/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ranking ranking = db.Rankings.Find(id);
            if (ranking == null)
            {
                return HttpNotFound();
            }
            return View(ranking);
        }

        // GET: Rankings/Create
        public ActionResult Create()
        {
            ViewBag.IDPelicula = new SelectList(db.Peliculas, "IDPelicula", "Titulo");
            return View();
        }

        // POST: Rankings/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IDRanking,IDPelicula,Titulo,Puntaje,NoVotos")] Ranking ranking)
        {
            if (ModelState.IsValid)
            {
                db.Rankings.Add(ranking);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IDPelicula = new SelectList(db.Peliculas, "IDPelicula", "Titulo", ranking.IDPelicula);
            return View(ranking);
        }

        // GET: Rankings/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ranking ranking = db.Rankings.Find(id);
            if (ranking == null)
            {
                return HttpNotFound();
            }
            ViewBag.IDPelicula = new SelectList(db.Peliculas, "IDPelicula", "Titulo", ranking.IDPelicula);
            return View(ranking);
        }

        // POST: Rankings/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IDRanking,IDPelicula,Titulo,Puntaje,NoVotos")] Ranking ranking)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ranking).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IDPelicula = new SelectList(db.Peliculas, "IDPelicula", "Titulo", ranking.IDPelicula);
            return View(ranking);
        }

        // GET: Rankings/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ranking ranking = db.Rankings.Find(id);
            if (ranking == null)
            {
                return HttpNotFound();
            }
            return View(ranking);
        }

        // POST: Rankings/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Ranking ranking = db.Rankings.Find(id);
            db.Rankings.Remove(ranking);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
