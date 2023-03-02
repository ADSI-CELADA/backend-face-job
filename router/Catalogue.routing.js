import { Router } from "express"
import { consultProfessional,consultTarget,consultCategories, consultProfile } from "../controllers/catalogue.js";

export const CatalogueRouter = Router()

CatalogueRouter.get('/consultProfessionals',consultProfessional)
CatalogueRouter.get('/consultTarget',consultTarget)
CatalogueRouter.post('/consultCategories',consultCategories)
CatalogueRouter.post('/consultProfile',consultProfile)