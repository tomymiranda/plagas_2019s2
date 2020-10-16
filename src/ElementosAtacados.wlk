import plagas.*

class Hogar {

	var property nivelDeMugre
	var property confort

	method esBueno() {
		return self.nivelDeMugre() <= (self.confort() / 2)
	}

	method recibirAtaque(plaga) {
		self.nivelDeMugre(self.nivelDeMugre() + plaga.nivelDeDanio())
	}

}

class Huerta {

	var property capacidadDeProduccion
	var nivel = nivelDeProduccion

	method esBueno() {
		return self.capacidadDeProduccion() > self.nivel()
	}

	method recibirAtaque(plaga){
		if (plaga.trasmiteEnfermedades()) {
			self.capacidadDeProduccion(self.capacidadDeProduccion() - (self.capacidadDeProduccion() * 0.1) - 10)
		} else {
			self.capacidadDeProduccion(self.capacidadDeProduccion() - (self.capacidadDeProduccion() * 0.1))
		}
	}

	method nivel(){
		return nivelDeProduccion.nivel()
	}
}

object nivelDeProduccion{
	var property nivel = 4
	}

class Mascota {

	var property nivelDeSalud

	method esBueno() {
		return self.nivelDeSalud() > 250
	}

	method recibirAtaque(plaga){
		if(plaga.trasmiteEnfermedades()){
			self.nivelDeSalud(self.nivelDeSalud() - plaga.nivelDeDanio())
		}
	}
}

class Barrio {

	var elementosEnElBarrio = []

	method agregarElementoAlBarrio(elemento) {
		elementosEnElBarrio.add(elemento)
	}

	method esCopado() {
		return elementosEnElBarrio.count({ c => c.esBueno() }) > elementosEnElBarrio.count({ c => not c.esBueno() })
	}

}

