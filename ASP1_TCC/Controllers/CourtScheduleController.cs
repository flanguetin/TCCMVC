using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ASP1_TCC.ViewModels;

namespace ASP1_TCC.Controllers
{
    public class CourtScheduleController : Controller
    {
        private Entities db = new Entities();

        // GET: CourtSchedule
        public ActionResult Index(int courtid)
        {
            courts theCourt = db.courts.Find(courtid);
            theCourt.reservations.OrderBy(reservations => reservations.date);

            CourtScheduleViewModel vm = new CourtScheduleViewModel();
            vm.courtId = courtid;
            vm.courtName = theCourt.name;
            vm.from = DateTime.Now;
            vm.hourStart = 7;
            vm.hourEnd = 20;
            vm.dateSpan = 7;
            vm.selectedBookings = new List<reservations>();
            DateTime limit = DateTime.Now.AddDays(vm.dateSpan);
            foreach (reservations r in theCourt.reservations)
                if ((r.date > DateTime.Now) && (r.date < limit))
                    vm.selectedBookings.Add(r);

            return View(vm);
        }
    }
}