import rodados.*

class Dependencia {
	const flota = #{}
	var property empleados = 0
	
	method agregarAFlota(rodado) {
		flota.add(rodado)
	}
	
	method quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	
	method pesoTotalFlota() = flota.sum { r => r.peso() }
	
	method estaBienEquipada() {
		return flota.size() >= 3 and flota.all { r => r.velocidadMaxima() >= 100 } 
	}
	
	method capacidadTotalEnColor(unColor) {
		return flota
			.filter { r => r.color() == unColor }
			.sum { r => r.capacidad() }
	}
	
	method colorDelRodadoMasRapido() {
		return flota.max { r => r.velocidadMaxima() }.color()
	}
	
	method capacidadFaltante() {
		return 0.max(empleados - self.capacidadTotal())
	}
	
	method capacidadTotal() {
		return flota.sum { r => r.capacidad() }
	}
	
	method esGrande() {
		return empleados >= 40 and flota.size() >= 5
	}
}

/* 
 * etapa 2 --> 
 * calse pediod.. ponerle property... verificar si los pedios cumplen para un auto
 * 
 * dependecia tiene coleecion de pediod --> pedios es una clase. la clase va a tener las propertys y
   un metodo que s ellama puede satisfacer (recibe auto por paramtro)
   * 
   * relajar ( suma 1 a la cantidad de horas
   * acelerar resta uno a la cantidad de horas
* 
* etapa 3 --> 
* dependencia tien que tener la coleccion de pedidos
* 
* a)el total: pedido conocer pasajer. sumar la cantidad de pasajeros de cada pedido
* b)cuales de los pedidos... -->tenemos coleccion de pedidos y coleccion de auto 
*   -->trabajar con un metodo auxiliar
* c) dado un color --> colecciones
* 
* 
* 
* 
* 
* 
*  */