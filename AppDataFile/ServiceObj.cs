using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BeautyShop_M.AppDataFile
{
    internal class ServiceObj
    {
        public static int Id { get; set; }
        public static string Title { get; set; }
        public static decimal Cost { get; set; }
        public static int DurationInSecond { get; set; }
        public static string Description { get; set; }
        public static int Discount { get; set; }
        public static string Image { get; set; }
        public static bool IsActive { get; set; }
    }
}
