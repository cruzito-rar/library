const db = require("../config/db");
const crypto = require("crypto");

exports.login = (req, res) => {
  const { username, password } = req.body;
  const hashedPassword = crypto.createHash('md5').update(password).digest('hex');
  const selectUser = 'select * from usuarios where nombreUsuario = ? and password = ? and deleted_at is null;';

  db.query(selectUser, [username, hashedPassword], (error, results) => {
    if (error) {
      res.status(500).json({ status: 500, message: "Error interno del servidor" });
      return;
    }

    if (results.length > 0) {
      res.status(200).json({ status: 200, message: "Inicio de sesión exitoso", rol: results[0].rol, id: results[0].idUsuario });
    } else {
      res.status(401).json({ status: 401, message: "Nombre de usuario o contraseña incorrectos" });
    }
  });
};
