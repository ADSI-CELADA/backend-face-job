import jwt from "jsonwebtoken";
import { TOKEN_CODE, TOKEN_EXPIRE, TOKEN_SECRET } from "../config/config.js";
import { nodemailerPass } from "../helpers/nodemailer.js";
import bcrypt from "bcrypt";
import conexion from "../database/db.js";
import validator from "validator";

const getRandomInt = (cod) => {
  cod = Math.floor(Math.random() * (9999 - 1000) + 1000);
  return cod;
};

export const dataUser=async(req,res)=>{
  try {
     const token=req.headers["token"]
  if (token) {
    let correo=jwt.verify(token,TOKEN_SECRET)
    let {email}=correo
    const [result]=await conexion.query('SELECT * FROM cliente where email=?',[email])
    return res.json(result)
  }else{
    return res.json('failed')
  }
  } catch (error) {
    console.log(error);
  }
 
}


export const sendMailEmail = async (req, res) => {
  try {

      let { email } = req.body;
      if (validator.isEmail(email)) {
        let code = getRandomInt(0);
        let response = nodemailerPass(email, code);
        const [result] = await conexion.query(
          `UPDATE cliente SET codigo = ? WHERE email = "${email}"`,
          [code]
        );
        return res.json({ message: "send", response, code, result });
      }
    
  } catch (error) {
    console.log(error);
  }
};







export const sendMail = async (req, res) => {
  try {
    const token = req.headers["token"];

    if (token) {
      let correo = jwt.verify(token, TOKEN_SECRET);
      let { email } = correo;
      if (validator.isEmail(email)) {
        let code = getRandomInt(0);
        let response = nodemailerPass(email, code);
        const [result] = await conexion.query(
          `UPDATE cliente SET codigo = ? WHERE email = "${email}"`,
          [code]
        );
        return res.json({ message: "send", response, code, result });
      }
    }
  } catch (error) {
    console.log(error);
  }
};


export const validateCodeEmail = async (req, res) => {
  try {
   
    let { codigo } = req.body;
    let { email } = req.params;
    const [result] = await conexion.query(
      `SELECT codigo FROM cliente WHERE email = "${email}"`
    );

    let value = { codigo: parseInt(codigo) };
      console.log(codigo);
    console.log(result[0].codigo, "code ->", value.codigo);

      if (value.codigo == result[0].codigo) {
        return res.json({ data: "CODE_VALIDE" });
      } else {
        return res.json({ data: "NOT_VALIDE" });
      }
    
  } catch (error) {
    console.log(error);
  }
};
export const updatePasswordEmail = async (req, res) => {
  const { password } = req.body;
  const saltRounds = 10;
  const salt = bcrypt.genSaltSync(saltRounds);
  const hash = bcrypt.hashSync(password, salt);
  try {
   
  
      let { email } = req.params;
      const passOld = await conexion.query(
        `SELECT password FROM cliente WHERE email = "${email}"`
      );
      if (passOld != password) {
        const [result] = await conexion.query(
          `UPDATE cliente SET password = ? WHERE email = "${email}"`,
          [hash]
        );
        if (result.affectedRows != 0) {
          return res.json({ result, data: "PASSWORD_UPDATE" });
        }
      }
    
  } catch (error) {
    console.log(error);
  }
};




export const validateCode = async (req, res) => {
  try {
    const token = req.headers["token"];
    let { codigo } = req.body;
    let correo = jwt.verify(token, TOKEN_SECRET);
    let { email } = correo;
    const [result] = await conexion.query(
      `SELECT codigo FROM cliente WHERE email = "${email}"`
    );

    let value = { codigo: parseInt(codigo) };

    console.log(result[0].codigo, "code ->", value.codigo);

    if (token) {
      if (value.codigo == result[0].codigo) {
        return res.json({ data: "CODE_VALIDE" });
      } else {
        return res.json({ data: "NOT_VALIDE" });
      }
    }
  } catch (error) {
    console.log(error);
  }
};

export const updatePassword = async (req, res) => {
  const token = req.headers["token"];
  const { password,passsnuevaaa } = req.body;
  const saltRounds = 10;
  const salt = bcrypt.genSaltSync(saltRounds);
  const hash = bcrypt.hashSync(password, salt);
  try {
    if (token) {
      let correo = jwt.verify(token, TOKEN_SECRET);
      let { email } = correo;
      const passOld = await conexion.query(
        `SELECT password FROM cliente WHERE email = "${email}"`
      );


      if (passOld == hash) {
        
        const hashNuevo = bcrypt.hashSync(passsnuevaaa, salt);
        if (passOld!=passsnuevaaa) {
          const [result] = await conexion.query(
         
          `UPDATE cliente SET password = ? WHERE email = "${email}"`,
          [hashNuevo]
        );
        if (result.affectedRows != 0) {
          return res.json({ result, data: "PASSWORD_UPDATE" });
        }
        }else{
          console.log("la contraseña nueva es igual a la antigua");
        }
        
      }else{
        console.log("la contraseña antigua no es igual a la antigua del formulario");
      }
    }
  } catch (error) {
    console.log(error);
  }
};


/* modulo info nombre,apellido,numero,profesion*/

export const updateInfo = async (req,res) =>{
 
try { const token = req.headers["token"];
  const { name, number, professional, lastname} = req.body
 

console.log(name);
  if (token) {
    let correo = jwt.verify(token, TOKEN_SECRET);
    let { email } = correo;
    
    const [result] = await conexion.query(
    `UPDATE cliente SET name=?,number=?,profession=?,lastname=? where email=?`,[name,number,professional,lastname,email]
    )
    if (result.affectedRows !=0) {
      return res.json({ result, data: "UPDATE_INFO"})
    }
  }
} catch (error) {
  console.log(error);
}
}

export const deleteAccount = async (req,res) =>{
  /*const token = req.headers["token"];
  const {passwordForm}  = req.body;
  console.log(passwordForm);*/
 
  try {
    let id=0
   /* if (token) {
     /* let correo = jwt.verify(token, TOKEN_SECRET);
      let { email } = correo;*/
      let email="kebinochoa10@gmail.com"
      let passwordForm="666"
      const [result] = await conexion.query(
        `SELECT password FROM cliente WHERE email = "${email}"`
      );
     let password=result[0].password
      bcrypt.compare(passwordForm, password, async (error, isMatch) => {
        if (!isMatch) {
          return res.json({ data: "PASSWORD_ERROR" });
        } else {
          
            const [response]=await conexion.query('SELECT email_cliente2,id_textos from megustatextos WHERE  email_cliente2=?',[email])
              console.log(response);
              id=result[0].id_textos
          if (response.length>0) {
            const [response]=conexion.query('DELETE FROM megustatextos WHERE email_cliente2=? ',[email])
            if (response.affectedRows!=0) {
             const [rest] = await conexion.query(
                "UPDATE publicaciones SET likes=(SELECT likes FROM publicaciones WHERE id=?)-1 WHERE id=?",
                [id,id]
              );
              if (rest.affectedRows == 1) {
                res.json("bien dislike");
              } else {
                res.json("mal el dislike");
              }
              
            }
    
        }
          const [responseMg]= conexion.query('SELECT email_megusta FROM megusta WHERE email_megusta=?',[email])
           if (responseMg.length >0) {
            const [response]=conexion.query('DELETE FROM megusta WHERE email_megusta=?',[email])
            if (response.affectedRows !=0) {
              console.log('eliminado de la tabla  me gusta');
              
            } 
           } 
           const [responseCu]= conexion.query('SELECT emailcliente FROM comentarios_usuario WHERE emailcliente=?', [email])
           if (responseCu.length >0) {
            const [response]=conexion.query('DELETE FROM comentarios_usuario WHERE emailcliente=?',[email])
            if (response.affectedRows !=0) {
              console.log("eliminado de la tabla comentarios_usuario");
              
            }
            
           }
           const [responsePc]=conexion.query('SELECT email3 FROM publicaciones_cliente WHERE email3', [email])
           if (responsePc.length >0) {
            const [response]= conexion.query('DELETE FROM publicaciones_cliente WHERE email3=? ', [email])
            if (response.affectedRows !=0) {
              console.log("eliminado de la tabla publicaciones_cliente");
              
            }
           }
           const [responsePubc]=conexion.query('SELECT email4 FROM publicacionestextos_cliente WHERE email4', [email])
           if (responsePubc.length >0) {
            const [response]= conexion.query('DELETE FROM publicacionestextos_cliente WHERE email4=?', [email])
            if (response.affectedRows != 0) {
              console.log("eliminado de la tabla publicacionestextos_cliente");
              
            }
            
           }


        }
      });
  
    
  /*  }*/
     



  } catch (error) {
    console.log(error);
  }
}





