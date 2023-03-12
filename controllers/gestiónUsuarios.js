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
  const { password } = req.body;
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
      if (passOld != password) {
        const [result] = await conexion.query(
          `UPDATE cliente SET password = ? WHERE email = "${email}"`,
          [hash]
        );
        if (result.affectedRows != 0) {
          return res.json({ result, data: "PASSWORD_UPDATE" });
        }
      }
    }
  } catch (error) {
    console.log(error);
  }
};
