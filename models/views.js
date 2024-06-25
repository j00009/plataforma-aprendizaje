import { Router } from "express";
import { getCursos } from "../models/cursos.js"  

//home 

router.get("/", async (req, res) => {
    const skaters = await getSkaters()
    res.render("home", {
      skaters: skaters.rows
    })
  })