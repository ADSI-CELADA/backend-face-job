import nodemailer from "nodemailer"




// const transporter = nodemailer.createTransport({
//   host: 'smtp.gmail.com',
//   port: 587,
//   auth: {
//     user: 'facejob1010@gmail.com',
//     pass: 'crhapfunhfsaarzn'
//   }
// });

export const nodemailerPass = async (email, cod) => {
    const config = {
        host: "smtp.gmail.com",
        port: 587,
        secure: false,
        auth: {
          user: 'facejob1010@gmail.com',
          pass: 'crhapfunhfsaarzn',
        },
      };
    
      const mensaje = {
        from: "facejob1010@gmail.com",
        to: email,
        subject: "Recuperar Conraseña de usuario FACE_JOB",
        html: `Su codigo es : ${cod}`,
      };
    
      const transporter = nodemailer.createTransport(config);
    
      const info = await transporter.sendMail(mensaje);

      // transporter.sendMail({
      //   from: 'facejob001@gmail.com',
      //   to: email,
      //   subject: 'Test Email Subject',
      //   html: `Su codigo es : ${cod}`
      // }).then((res) =>{console.log(res);}).catch((err) => {console.log(err);})





      return cod
}
