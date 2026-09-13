object roberto {

  var vehiculo = bicicleta

  method peso(){
    return 90 + vehiculo.peso()
  }

  method puedeLlamar(){
    return false
  }

  method cambiarVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
  }

}

object chuck {

  method peso(){
    return 80
  }

  method puedeLlamar(){
    return true
  }

}

object neo {

  var tieneCredito = true
  method peso(){
    return 0
  }

  method puedeLlamar(){
    return tieneCredito
  }

  method establecerSiTieneCredito(estado){
    tieneCredito = estado
  }

}



object bicicleta {

  method peso(){
    return 5
  }
}

object camion {

  var cantidadDeAcoplados = 1

  method establecerCantidadDeAcoplados(nuevaCantidad){
    cantidadDeAcoplados = nuevaCantidad
  }
  method peso(){
    return 200 * cantidadDeAcoplados
  }
}


object puenteDeBrooklyn {

  method dejaPasar(mensajero, paquete){
    return mensajero.peso() < 1000 && paquete.estaPago()
  }
}

object matrix {

  method dejaPasar(mensajero, paquete){
    return mensajero.puedeLlamar() && paquete.estaPago()
  }
}

object paquete {

  var estaPago = true

  method establecerSiEstaPago(nuevoValor){
    estaPago = nuevoValor
  }

  method estaPago(){
    return estaPago
  }
}



object empresaDeMensajeria {

  const mensajeros = []

  method mensajeros(){
    return mensajeros
  }

  method contratar(mensajero){
    mensajeros.add(mensajero)
  }

  method despedir(mensajero){
    mensajeros.remove(mensajero)
  }

  method despedirATodos(){
    mensajeros.clear()
  }

  method esGrande(){
    return mensajeros.size() > 2
  }

  method elPrimerMensajeroPuedeEntregarElPaquete(paquete, lugar){
    return lugar.dejaPasar(self.primerMensajero(), paquete)
  }

  method primerMensajero(){
    return mensajeros.first()
  }

  method pesoDelUltimoMensajero(){
    return mensajeros.last().peso()
  }
}