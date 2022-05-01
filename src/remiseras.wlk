/*
 * Remiseras: Muy bien, solo quite el abs() que era innecesario
 */
import clientes.*

object roxana {
	method precioViaje(cliente, kilometros){
		return (cliente.precioPorKilometro() * kilometros)
	}
}

object gabriela {
	method precioViaje(cliente, kilometros){
		return ((cliente.precioPorKilometro() * 1.20) * kilometros) 
	}
}

object mariela {
	method precioViaje(cliente, kilometros){
		return (cliente.precioPorKilometro() * kilometros).max(50)
    }
}

object juana {
	method precioViaje(cliente, kilometros){
		if (kilometros <= 8){
		 return 100
		} else {
			return 200 
		}
	}
}

object lucia{
	var remiseriaActual = null 

	method remiseriaActual(remiseria){
		remiseriaActual = remiseria
	}
	
	method remiseriaActual(){
		return remiseriaActual
	}
	
	method precioViaje(cliente, kilometros){
		return self.remiseriaActual().precioViaje(cliente, kilometros)
	}
}