import { TOKEN_SECRET } from "../config/config.js";
import conexion from "../database/db.js";
import jwt from "jsonwebtoken";
export const consultProfessional = async (req, res) => {
  const { authorization } = req.headers;

  if (!authorization) {
    return res.json({ data: "error" });
  }

  try {
    const encoder = new TextEncoder();
    const jwtData = await jwtVerify(
      authorization,
      encoder.encode(TOKEN_SECRET)
    );

    if (jwtData.payload) {
      const [result] = await conexion.query(
        "SELECT email, iconUser, name, profession FROM cliente"
      );
      res.json({ data: result });
    }
  } catch (error) {
    res.send(error);
  }
};

export const consultTarget = async (req, res) => {
  try {
    const token=req.headers['token']

    if (token) {
      let correo=jwt.verify(token,TOKEN_SECRET)
      let {email}=correo
      const [result] = await conexion.query(
    "SELECT email, iconUser, name, profession FROM cliente WHERE email != ? ORDER BY rand() LIMIT 4",[email]
    );
    res.json(result);
    }else{
      const [result] = await conexion.query(
        "SELECT email, iconUser, name, profession FROM cliente ORDER BY rand() LIMIT 4"
        );
        res.json(result);
    }

    
  } catch (error) {
    console.log(error);
    res.json(error)
  }
  
};

export const consultCategories = async (req, res) => {

  try {
    const token=req.headers['token']

  if (token) {
    let correo=jwt.verify(token,TOKEN_SECRET)
    let {email}=correo
    let {profession} = req.params;
  
  const [result] = await conexion.query(
    `SELECT name,email,profession,iconUser FROM cliente WHERE email!=? and profession=?`,
    [email,profession]
  );

  return res.json(result);
  }else{
    let {profession} = req.params;
    const [result] = await conexion.query(
      `SELECT name,email,profession,iconUser FROM cliente WHERE profession=?`,
      [profession]
    );
  
    return res.json(result);
  }
  } catch (error) {
    console.log(error);
  }
  
};

export const consultProfile = async (req, res) => {
  let {email} = req.params;
  const [result] = await conexion.query(
    "SELECT email,name,lastname,number,profession,iconUser FROM cliente WHERE email = ?",
    [email]
  );
  return res.json(result);
};

export const consultViews = async (req, res) => {

  try {
    const token=req.headers['token']

    if (token) {
      let correo=jwt.verify(token,TOKEN_SECRET)
      let {email}=correo
    
      const [result] = await conexion.query(`SELECT email_visto FROM profesionales_vistos WHERE email_cliente = ?`,[email])
      
      if (result.length>0) {
        let emailView = []
        let usersView =[]
        for (let i = 0; i < result.length; i++) {
          emailView.push(result[i].email_visto)
        }
        for (let i = 0; i < emailView.length; i++) {
          const [info] = await conexion.query('SELECT name,email,profession,iconUser FROM cliente WHERE email=?',[emailView[i]]);
          usersView.push(info[0])
        }
        res.json(usersView);
      }else{
        res.json("no views")
      }
      
    }else{
      res.json("no views")
    }
    
  } catch (error) {
    console.log(error);
  }
  
};