import golosinas.golosinas.*

object mariano {
	const golosinas = []
	
	method comprar(unaGolosina) {
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() {
		return golosinas.size()
	}
	
	method tieneLaGolosina(unaGolosina) {
		return golosinas.contains(unaGolosina)
	}
	
	method probarGolosinas() {
		golosinas.forEach({ unaGolosina => unaGolosina.mordisco() })
	}
	
	method hayGolosinaSinTACC() {
		return golosinas.any({ unaGolosina => unaGolosina.libreGluten() })
	}
	
	method preciosCuidados() {
		return golosinas.all({ unaGolosina => unaGolosina.precio() <= 10 })
	}
	
	method golosinaDeSabor(unSabor) {
		return golosinas.find({ unaGolosina => unaGolosina.gusto() == unSabor })
	}
	
	method golosinasDeSabor(unSabor) {
		return golosinas.filter({ unaGolosina => unaGolosina.gusto() == unSabor })
	}
	
	method sabores() {
		return golosinas.map({ unaGolosina => unaGolosina.gusto() }).asSet()
	}
	
	method golosinaMasCara() {
		return golosinas.max({ unaGolosina => unaGolosina.precio() })
	}
	
	method pesoGolosinas() {
		return golosinas.sum({ unaGolosina => unaGolosina.peso() })
	}
}





// Colecciones: Son nuevos objetos que conocen a los elementos que tienen dentro.
// - Listas ( [] ): orden, repetidos
// - Conjustos ( #{} ): no tiene orden, no tiene repetidos
// Nos abstraemos cuáles son los elementos que tiene dentro. Y del algoritmo para recorrerlos.
// Ambos mutan los elementos que tienen dentro


