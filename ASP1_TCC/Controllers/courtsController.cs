using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ASP1_TCC;

namespace ASP1_TCC.Controllers
{
    public class courtsController : Controller
    {
        private TennisClubChavornayEntities db = new TennisClubChavornayEntities();

        // GET: courts
        public ActionResult Index()
        {
            return View(db.courts.ToList());
        }

        // GET: courts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            courts courts = db.courts.Find(id);
            if (courts == null)
            {
                return HttpNotFound();
            }
            return View(courts);
        }

        // GET: courts/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: courts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idCourts,surface,inside,name,reservability")] courts courts)
        {
            if (ModelState.IsValid)
            {
                db.courts.Add(courts);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(courts);
        }

        // GET: courts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            courts courts = db.courts.Find(id);
            if (courts == null)
            {
                return HttpNotFound();
            }
            return View(courts);
        }

        // POST: courts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idCourts,surface,inside,name,reservability")] courts courts)
        {
            if (ModelState.IsValid)
            {
                db.Entry(courts).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(courts);
        }

        // GET: courts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            courts courts = db.courts.Find(id);
            if (courts == null)
            {
                return HttpNotFound();
            }
            return View(courts);
        }

        // POST: courts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            courts courts = db.courts.Find(id);
            db.courts.Remove(courts);
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
