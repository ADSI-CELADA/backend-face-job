import { reports,solucion,messagesUsers } from "../controllers/admin.js";
import { Router } from "express";

export const RouterAdmin=Router()

RouterAdmin.get('/reports',reports)
RouterAdmin.post('/solucion',solucion)
RouterAdmin.post('/messagesUsers',messagesUsers)