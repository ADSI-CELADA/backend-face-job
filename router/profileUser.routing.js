import { Router } from "express";
import { sendMail, validateCode, updatePassword,dataUser } from "../controllers/gestiónUsuarios.js";

export const profileUser = Router()

profileUser.post("/senMail", sendMail)
profileUser.post("/recovery", validateCode)
profileUser.put("/updatePass/:email", updatePassword)
profileUser.get('/dataUser',dataUser)
