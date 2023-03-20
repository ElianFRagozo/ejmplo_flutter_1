class Profesor {
  var nombre;
  var programa;
  var foto;
  var horas;
  var estado;

  Profesor(
      {required this.foto,
      required this.nombre,
      required this.horas,
      required this.programa,
      required this.estado});

  factory Profesor.crear(Map jsonMap) {
    return Profesor(
        foto: jsonMap['foto'],
        nombre: jsonMap['nombre'],
        horas: jsonMap['horas'],
        programa: jsonMap['programa'],
        estado: jsonMap['estado']);
  }
}

var dato1 = {
  "foto":
      "https://modaellos.com/wp-content/uploads/2022/07/rostro-masculino-barba-1200x1232.png",
  "nombre": "Alex Vacca",
  "programa": "Ingeneria de Sistemas",
  "horas": 18,
  "estado": true
};
var dato2 = {
  "foto":
      "https://modaellos.com/wp-content/uploads/2022/07/rostro-masculino-barba-1200x1232.png",
  "nombre": "Amilkar Sierra",
  "programa": "Ingeneria de Sistemas",
  "horas": 20,
  "estado": false
};
var dato3 = {
  "foto":
      "https://modaellos.com/wp-content/uploads/2022/07/rostro-masculino-barba-1200x1232.png",
  "nombre": "Carmen Perez",
  "programa": "Enfermeria",
  "horas": 13,
  "estado": true
};

List<Profesor> listaProfes = [
  Profesor.crear(dato1),
  Profesor.crear(dato2),
  Profesor.crear(dato3),
];
