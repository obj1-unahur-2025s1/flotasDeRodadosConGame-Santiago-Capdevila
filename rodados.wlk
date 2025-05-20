import wollok.game.*

class Corsa {
  var property color
  var position = new Position(x = 4, y = 7)   // game.at(0, 0)
  const pasoPor = []

  method capacidad() = 4
  method velocidad() = 150
  method peso() = 1300
}

class Kwid {
  var property tieneTanqueAdicional

  method capacidad() = if (tieneTanqueAdicional) 3 else 4
  method velocidad() = if (tieneTanqueAdicional) 110 else 120
  method peso() = 1200 + if (tieneTanqueAdicional) 150 else 0 
  method color() = "azul"
}

class Especial {
  var property capacidad 
  const velocidad
  var property peso 
  var property color

  method velocidad() = velocidad.min(topeVelocidadMaxima.tope()) 
}

object trafic {
  var property interior = comodo
  var property motor = pulenta
  method capacidad() = interior.capacidad()
  method peso() = 4000 + interior.peso() + motor.peso()
  method velocidad() = motor.velocidad()
  method color() = "blanco"
}

//

object comodo {
  method capacidad() = 5
  method peso() = 700
}

object popular {
  method capacidad() = 12
  method peso() = 1000
}

object pulenta {
  method peso() = 800
  method velocidad() = 130
}

object bataton {
  method peso() = 500
  method velocidad() = 80
}

object topeVelocidadMaxima {
  var property tope = 200
}

// 

const corsa1 = new Corsa(color = "rojo")
const kwid1 = new Kwid(tieneTanqueAdicional = true)