using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using VehicleInventoryApplication.Models;

namespace VehicleInventoryApplication.Controllers
{
    public class vehicleinventoriesController : Controller
    {
        private vehicleinventoryappEntities1 db = new vehicleinventoryappEntities1();

        // GET: vehicleinventories
        public ActionResult Index()
        {
            return View(db.vehicleinventories.ToList());
        }

        //// GET: vehicleinventories/Details/5
        //public ActionResult Details(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    vehicleinventory vehicleinventory = db.vehicleinventories.Find(id);
        //    if (vehicleinventory == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(vehicleinventory);
        //}

        // GET: vehicleinventories/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: vehicleinventories/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "vehicleid,Make,Model,Year,VIN")] vehicleinventory vehicleinventory)
        {
            if (ModelState.IsValid)
            {
                db.vehicleinventories.Add(vehicleinventory);
                db.SaveChanges();
                TempData["Success Message"] = "New Record Added Succesfully";
                return RedirectToAction("Index");
            }

            return View(vehicleinventory);
        }

        // GET: vehicleinventories/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            vehicleinventory vehicleinventory = db.vehicleinventories.Find(id);
            if (vehicleinventory == null)
            {
                return HttpNotFound();
            }
            return View(vehicleinventory);
        }

        // POST: vehicleinventories/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "vehicleid,Make,Model,Year,VIN")] vehicleinventory vehicleinventory)
        {
            if (ModelState.IsValid)
            {
                db.Entry(vehicleinventory).State = EntityState.Modified;
                db.SaveChanges();
                TempData["Success Message"] = "Record Update Succesfully";
                return RedirectToAction("Index");
            }
            return View(vehicleinventory);
        }

        // GET: vehicleinventories/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            vehicleinventory vehicleinventory = db.vehicleinventories.Find(id);
            if (vehicleinventory == null)
            {
                return HttpNotFound();
            }
            return View(vehicleinventory);
        }

        // POST: vehicleinventories/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            vehicleinventory vehicleinventory = db.vehicleinventories.Find(id);
            db.vehicleinventories.Remove(vehicleinventory);
            db.SaveChanges();
            TempData["Success Message"] = "Record Delete Succesfully";
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
