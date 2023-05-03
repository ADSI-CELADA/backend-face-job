import { Router } from "express"
import {createUserClient, getAllUsers, loginUserClient} from "../controllers/auths.js"

export const UserRouter = Router()

UserRouter.post('/registroCliente', createUserClient)
UserRouter.post('/loginCliente', loginUserClient)
UserRouter.get('/users', getAllUsers)




