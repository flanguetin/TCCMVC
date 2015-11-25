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
    public class UsersController : Controller
    {
        private TCCEntities db = new TCCEntities();

        // GET: Users
        public ActionResult Index()
        {
            var users = db.Users.Include(u => u.Applications).Include(u => u.Memberships).Include(u => u.Profiles);
            return View(users.ToList());
        }

        // GET: Users/Details/5
        public ActionResult Details(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Users users = db.Users.Find(id);
            if (users == null)
            {
                return HttpNotFound();
            }
            return View(users);
        }

        // GET: Users/Create
        public ActionResult Create()
        {
            ViewBag.ApplicationId = new SelectList(db.Applications, "ApplicationId", "ApplicationName");
            ViewBag.UserId = new SelectList(db.Memberships, "UserId", "Password");
            ViewBag.UserId = new SelectList(db.Profiles, "UserId", "PropertyNames");
            return View();
        }

        // POST: Users/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "UserId,ApplicationId,Firstname,LastName,UserName,IsAnonymous,LastActivityDate")] Users users)
        {
            if (ModelState.IsValid)
            {
                users.UserId = Guid.NewGuid();
                db.Users.Add(users);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ApplicationId = new SelectList(db.Applications, "ApplicationId", "ApplicationName", users.ApplicationId);
            ViewBag.UserId = new SelectList(db.Memberships, "UserId", "Password", users.UserId);
            ViewBag.UserId = new SelectList(db.Profiles, "UserId", "PropertyNames", users.UserId);
            return View(users);
        }

        // GET: Users/Edit/5
        public ActionResult Edit(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Users users = db.Users.Find(id);
            if (users == null)
            {
                return HttpNotFound();
            }
            ViewBag.ApplicationId = new SelectList(db.Applications, "ApplicationId", "ApplicationName", users.ApplicationId);
            ViewBag.UserId = new SelectList(db.Memberships, "UserId", "Password", users.UserId);
            ViewBag.UserId = new SelectList(db.Profiles, "UserId", "PropertyNames", users.UserId);
            return View(users);
        }

        // POST: Users/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "UserId,ApplicationId,Firstname,LastName,UserName,IsAnonymous,LastActivityDate")] Users users)
        {
            if (ModelState.IsValid)
            {
                db.Entry(users).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ApplicationId = new SelectList(db.Applications, "ApplicationId", "ApplicationName", users.ApplicationId);
            ViewBag.UserId = new SelectList(db.Memberships, "UserId", "Password", users.UserId);
            ViewBag.UserId = new SelectList(db.Profiles, "UserId", "PropertyNames", users.UserId);
            return View(users);
        }

        // GET: Users/Delete/5
        public ActionResult Delete(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Users users = db.Users.Find(id);
            if (users == null)
            {
                return HttpNotFound();
            }
            return View(users);
        }

        // POST: Users/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            Users users = db.Users.Find(id);
            db.Users.Remove(users);
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
