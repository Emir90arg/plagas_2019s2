 import plagas.*
 
 class Hogar{
	var property nivelMugre = 0
	var property confort = 0 
	
	method esBuena(){
		return  nivelMugre <= confort / 2
	}
	method efectoDePlaga(plaga){
		nivelMugre = nivelMugre + plaga.nivelDeDanio()

	}
 } 
 
class Huerta{
	var property capacidadDeProduccion =0
	var property nivel
	method esBuena(){
		return capacidadDeProduccion >  nivel
	}	
	method efectoDePlaga(plaga){
	if (plaga.esTransmisor()){
		 capacidadDeProduccion = (capacidadDeProduccion - plaga.nivelDeDanio() * 0.1) - 10}
	else capacidadDeProduccion =  capacidadDeProduccion - plaga.nivelDeDanio() * 0.1
	}
}
class Mascota{
	var property salud = 0
	
	method esBuena(){
		return salud > 250
	}
	method efectoDePlaga(plaga){
		if (plaga.esTransmisor()){
			salud = salud - plaga.nivelDeDanio()
		}
	}
}

class Barrio{
	var property elementos = [] 
	method agregarElementos(elemento){
		elementos.add(elemento)
	}
	method esBueno(elemento){
		
	}
	method esCopado(){
		return elementos.count({elemento=> elemento.esBuena()}) > 
		 elementos.count({elemento=> not(elemento.esBuena())})
	}
	
}
