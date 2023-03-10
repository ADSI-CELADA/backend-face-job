import { Router } from "express"
import { createPost, createPostTextos, DeletePost, DeletePostText, DontLike, DontLikeText, imagenPerfil, likesImg, likesTexts, UpdateText, userPosts, userPostsTextos } from "../controllers/publicaciones.js"

export const PostsUserRouter = Router()

PostsUserRouter.post('/user/image',imagenPerfil)
PostsUserRouter.get('/user/postsimagenes/:email', userPosts)
PostsUserRouter.post('/user/createposttext/:email', createPostTextos)
PostsUserRouter.post('/user/createpost/:email', createPost)
PostsUserRouter.post('/user/userPoststextos/:email', userPostsTextos)
PostsUserRouter.post('/user/usermegusta/:email', likesImg)
PostsUserRouter.post('/user/usernomegusta/:email', DontLike)
PostsUserRouter.post('/user/usermegustatext/:email', likesTexts)
PostsUserRouter.post('/user/usernomegustatext/:email', DontLikeText)
PostsUserRouter.get('/user/userEliminaPost/:id', DeletePost)
PostsUserRouter.get('/user/userEliminaPostText/:id', DeletePostText)
PostsUserRouter.post('/user/userUpdatePostText/:id', UpdateText)
