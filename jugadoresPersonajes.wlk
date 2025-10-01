import elementos.*
import armas.*


object luisa {
  var personajeActivo = floki
  method cambiarPersonaje(otroPersonaje){
    personajeActivo = otroPersonaje
  }
  method asignarPersonaje(unPersonaje){
    unPersonaje
  }
  method aparece(elemento){
    personajeActivo.encontrar(elemento)
  }
}

object floki {
    var armaActual = ballesta

 method cambiarElArma(otraArma) {
   armaActual = otraArma
 }
 method encontrar(elemento){
  if (armaActual.estaCargada()){
   elemento.recibirAtaque(armaActual.potencia())
   armaActual.usar()}
 }

}

object mario {
    var armaActual = ballesta
    var valor = 0
    var ultimoElemento = castillo
    method valorRecolectado(unValor){
        valor = unValor
    }
    method cambiarArma(otraArma){
        armaActual = otraArma
    }
 
    method encontrar(elemento){
        elemento.recibirTrabajo()
      valor = valor + elemento.darValor() 
      ultimoElemento = elemento
   }
   method estaFeliz(){
     return valor >= 50 or ultimoElemento.altura() >= 10
   }
}
