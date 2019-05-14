import dependencia.*
import rodados.*

class Pedido{
	var property distancia
	var property tiempoMaximo
	var property cantidadDePasajeros 
	var property coloresIncompatibles = #{}
	
	method velocidadRequerida(){
		return distancia/tiempoMaximo
	}
	
	method puedeSatisfacer(auto){
		return auto.velocidadMaxima() - self.velocidadRequerida() >= 10
			and auto.capacidad() >= cantidadDePasajeros
			and coloresIncompatibles.all ({e => e != auto.color()})
			//and not  coloresIncompatibles.any({e => e == auto.color()})
	}
	
}



object abc {
	
	
}
