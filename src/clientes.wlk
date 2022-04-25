object ludmila {
	var precioPorKilometro = 18
	
	method precioPorKilometro(){
		return precioPorKilometro
	}
}


object anaMaria {
	var economiaEstable = true
	var precioPorKilometro = self.precioPorKilometro()
	 
	method economiaEstable(valor){
		economiaEstable = valor
	} 
	
	method economiaEstable(){
		return economiaEstable
	}
	
	
	method precioPorKilometro(){
		if (self.economiaEstable()){
			return 30
		} else {
			return 25
		}
	}		
}


object teresa {
	var precioPorKilometro = 22
	 
	method precioPorKilometro(valor){
		precioPorKilometro = valor
	} 
	
	method precioPorKilometro(){
		return precioPorKilometro
	}	
}

object melina {
	var clienteActual = null
	var precioPorKilometro = 0
	
	method clienteActual(cliente){
		clienteActual = cliente
		precioPorKilometro = self.clienteActual().precioPorKilometro() - 3
	}
	
	method clienteActual(){
		return clienteActual
	}
	
	method precioPorKilometro(){
	    return precioPorKilometro
	}	

}
