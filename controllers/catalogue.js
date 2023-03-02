import { TOKEN_SECRET } from "../config/config.js";
import conexion from "../database/db.js";

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
  const [result] = await conexion.query(
    "SELECT email, iconUser, name, profession FROM cliente LIMIT 3;"
  );
  res.json(result);
};

export const consultCategories = async (req, res) => {
  let profession = req.body.profession;
  const [result] = await conexion.query(
    "SELECT email, iconUser, name, profession FROM cliente WHERE profession = ?",
    [profession]
  );
  res.json(result);
};

export const consultProfile = async (req, res) => {
  let email = req.body.email;
  const [result] = await conexion.query(
    "SELECT email, iconUser, name, profession FROM cliente WHERE email = ?",
    [email]
  );
  res.json(result);
};
