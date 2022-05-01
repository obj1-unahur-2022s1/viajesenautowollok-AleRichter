/*
 * Clientes: Muy bien. Revisar los comentarios
 */

object ludmila {
	/*
	 * Como no varia, lo idea es definirlo como constante
	 * También te modifiqué el método para que veas otra forma de hacerlo
	 */
	const precioPorKilometro = 18
	
	method precioPorKilometro() = precioPorKilometro
}


object anaMaria {
	var economiaEstable = true
	/* Me encanto esta inicialización */
	var precioPorKilometro = self.precioPorKilometro()
	 
	method economiaEstable(valor){
		economiaEstable = valor
	} 
	
	method economiaEstable(){
		return economiaEstable
	}
	
	/*Te dejo otra forma de escribir lo mismo */
	method precioPorKilometro() = if (self.economiaEstable()){30}else{25}	
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
	/*No hace falta que se acuerde de ete atributo */
	var precioPorKilometro = 0
	
	method clienteActual(cliente){
		clienteActual = cliente 
	}
	
	method clienteActual(){
		return clienteActual
	}
	
	method precioPorKilometro(){
	    return self.clienteActual().precioPorKilometro() - 3
	}	

}
