﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SiGAT.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Bem Vindo ao SiGAT!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
