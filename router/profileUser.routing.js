import { Router } from "express";
import { sendMail, validateCode, updatePassword,dataUser, sendMailEmail, validateCodeEmail, updatePasswordEmail } from "../controllers/gestiónUsuarios.js";

export const profileUser = Router()

profileUser.post("/senMail", sendMail)
profileUser.post("/recovery", validateCode)
profileUser.put("/updatePass/:email", updatePassword)


profileUser.post("/senMailEmail", sendMailEmail)
profileUser.post("/recoveryEmail/:email", validateCodeEmail)
profileUser.put("/updatePassEmail/:email", updatePasswordEmail)
profileUser.get('/dataUser',dataUser)
