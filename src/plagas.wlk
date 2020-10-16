class Plaga {

	var property poblacion

	method trasmiteEnfermedades() {
		return self.poblacion() >= 10
	}
	
	method efectoPostAtaque(){
		self.poblacion(self.poblacion() + self.poblacion()*0.1)
	}
}

class Cucaracha inherits Plaga {

	var property pesoPromedio

	method nivelDeDanio() {
		return self.poblacion() / 2
	}

	override method trasmiteEnfermedades() {
		return super() && self.pesoPromedio() > 10
	}

	override method efectoPostAtaque(){
		super()
		self.pesoPromedio(self.pesoPromedio() + 2)
	}
}

class Mosquito inherits Plaga {

	// mas adelante varia respecto a pulgas,tal vez se tenga que pensar como el ejercicio viajesEnAuto
	method nivelDeDanio() {
		return self.poblacion() * 2
	}

	override method trasmiteEnfermedades() {
		return super() && self.poblacion() % 3 == 0
	}

}

class Pulgas inherits Plaga {

	// mas adelante varia respecto a mosquito,tal vez se tenga que pensar como el ejercicio viajesEnAuto
	method nivelDeDanio() {
		return self.poblacion() * 2
	}

}

class Garrapatas inherits Pulgas {

	override method efectoPostAtaque(){
	 super()
	 self.poblacion((self.poblacion() + self.poblacion()*0.1 ))
	}
}

