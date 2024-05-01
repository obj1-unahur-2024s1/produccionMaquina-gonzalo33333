object registroProduccion {
	const registroDePiezas = []       
	                                                                           
	method agregarAlRegistro(cantidadDePiezas){
		registroDePiezas.add(cantidadDePiezas)
	}
	
	method quitarAlRegistro(cantidadDePiezas){
		registroDePiezas.remove(cantidadDePiezas)
	}
	method algunDiaSeProdujo(cantidad) = registroDePiezas.contains(cantidad)
	
	method maximoValorDeProduccion() = registroDePiezas.max()
	
	method valoresDeProduccionPares() = registroDePiezas.filter({r => r.even()})
	
	method produccionEsAcotada(n1,n2) = registroDePiezas.all({r => r.between(n1,n2)})
	
	method produccionesSuperioresA(cuanto) = registroDePiezas.filter({r => r > cuanto})
	
	method produccionesSumando(n) = registroDePiezas.map({r => r + n})
	
	method totalProducido() = registroDePiezas.sum()
	
	method ultimoValorDeProduccion() = registroDePiezas.last()

	method cantidadProduccionesMayorALaPrimera() =  registroDePiezas.count({r => r > registroDePiezas.first()})
}
