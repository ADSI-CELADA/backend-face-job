import conexion from "../database/db.js";
import jwt from "jsonwebtoken";
import { TOKEN_CODE, TOKEN_EXPIRE, TOKEN_SECRET } from "../config/config.js";


export const reports=async(req,res)=>{
try {
    const token=req.headers['token']
    if (token) {
        let correo=jwt.verify(token,TOKEN_SECRET)
        let {email}=correo
        if (email=="face-job-admin@facejob.com") {
            const [result]=await conexion.query('SELECT * FROM reportes ORDER BY tiempo ASC')
            if (result.length>0) {
                res.json(result)
            }else{
                res.json('no hay reportes')
            }
        }
    }
} catch (error) {
    console.log(error);
}
}


export const solucion=async(req,res)=>{
try {
    const token=req.headers['token']
    const {email_reporte,email_reportado,id}=req.body
    if (token) {
        let correo=jwt.verify(token,TOKEN_SECRET)
        let {email}=correo
        if (email=="face-job-admin@facejob.com") {
            
            let nuevoEstado='Eliminado'
            const [resulti]=await conexion.query('UPDATE trabajos SET estado=? WHERE mi_email=? AND profecional_email=? OR mi_email=? AND profecional_email=?',[nuevoEstado,email_reporte,email_reportado,email_reportado,email_reporte])
           if (resulti.affectedRows!=0) {
            const [result]=await conexion.query('DELETE FROM reportes WHERE reportes.id_reporte=?',[id])
            if (result.affectedRows!=0) {
                res.json("reporte solucionado")
            }else{
                res.json("mal solucion")
            }
           }
        }
    }
    
} catch (error) {
    console.log(error);
}
}



export const messagesUsers=async(req,res)=>{
    try {
        const token = req.headers['token'];
       const {email_reporte,email_reportado}=req.body
        if (token) {
        
            let correo=jwt.verify(token,TOKEN_SECRET)
            let {email}=correo 
            if (email=="face-job-admin@facejob.com") {
                const [result]=await conexion.query("SELECT *,DATE_FORMAT(fecha,'%H:%i:%s') AS hora from mensaje WHERE remitente=? and receptor=? or remitente=? and receptor=? ",[email_reporte,email_reportado,email_reportado,email_reporte])
                if (result.length>0) {
                  
                    for (let i = 0; i < result.length; i++) {
                        let horas=result[i].hora.split(":",2)
                        let horasFinal=`${horas[0]}:${horas[1]}`
                        result[i].hora=horasFinal
                    }
                   
                     res.json(result)
                }else{
                    res.json('not results')
                }
           
            }
           
               
    
         
        }
        
    } catch (error) {
        console.log(error);
    }
}