using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASP1_TCC.ViewModels
{
    public class CourtScheduleViewModel
    {
        public int courtId;
        public string courtName;
        public List<reservations> selectedBookings;
        public DateTime from; // date from which we show
        public int dateSpan; // Number of days to show
        public int hourStart; // hour of the first booking to show for each day
        public int hourEnd; // hour of the start of the last booking of the day
    }
}