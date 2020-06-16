class Plaga{
	var property poblacion=0
	
	method nivelDeDanio(){
		return poblacion
	}
	method esTransmisor(){
		return poblacion >= 10
	}
	method efectoDeAtaque(){
		poblacion = poblacion + poblacion * 0.1
	}
}

class Cucarachas inherits Plaga{
	var property pesoPromedio = 0
	
	override method nivelDeDanio(){
		return super() / 2
	}
	override method esTransmisor(){
		return super() and pesoPromedio >= 10
	}
	override method efectoDeAtaque(){
		pesoPromedio = pesoPromedio +2 
		super()
	}	
}

class Pulgas inherits Plaga{
	override method nivelDeDanio(){
		return super() * 2
	}
}
class Garrapatas inherits Plaga{
	override method nivelDeDanio(){
		return super() * 2
	}
	override method efectoDeAtaque(){
		poblacion = poblacion + poblacion * 0.2
	}
}
class Mosquitos inherits Plaga{
	override method esTransmisor(){
		return super() and poblacion % 3 == 0
	}
}


