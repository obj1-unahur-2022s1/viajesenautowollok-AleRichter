import clientes.*
import remiseras.*

object oficina {
	var primeraRemisera = null
	var segundaRemisera = null	

	method primeraRemisera(){
		return primeraRemisera 
	}

	method segundaRemisera(){
		return segundaRemisera
	}
	
	method primeraRemisera(remisera){
		primeraRemisera = remisera
	}

	method segundaRemisera(remisera){
		segundaRemisera = remisera
	}
	
	method asignarRemiseras(remisera1, remisera2){
      	self.primeraRemisera(remisera1)
      	self.segundaRemisera(remisera2)
	}
	
	method cambiarPrimerRemiserarPor(remisera){
		self.primeraRemisera(remisera)
	}
	
	method cambiarSegundoRemiseraPor(remisera){
		self.segundaRemisera(remisera)
	}
    
    method intercambiarRemiseras(){
       var guardarDatoPrimerRemisera = self.primeraRemisera()
       
       self.cambiarPrimerRemiserarPor(self.segundaRemisera())
       self.cambiarSegundoRemiseraPor(guardarDatoPrimerRemisera)
    }
    
    method remiseraElegidaParaViaje(cliente, kms){
    	if(self.segundaRemisera().precioViaje(cliente, kms) < (self.primeraRemisera().precioViaje(cliente, kms) - 30)){
    	   	return self.segundaRemisera()
    	  } else {
    	  	return self.primeraRemisera()
        }
    }
}
