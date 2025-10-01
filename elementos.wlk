import armas.*

object castillo {
    var defensa = 150
  method altura(){
    return 20
  }
  method defensa(){
    return defensa
  }
  method defensa(nivelDefensa){
    defensa = nivelDefensa
  }
  method recibirAtaque(unaPotencia){
    defensa = defensa - unaPotencia
  }
  method darValor(){
    defensa / 5
  }
  method recibirTrabajo(){
    defensa = 200.min(defensa + 20)
  }

}

object aurora {
    var estaViva = true
  method altura() {
    return 1
  }
  method estaViva(){
    return estaViva
  }
  method recibirAtaque(unaPotencia){
    if (unaPotencia >= 10){
     estaViva = false}
  }
  method darValor(){
     return 15
  }
  method recibirTrabajo(){}
  
}

object tipa {
  var altura = 8
  method altura(){
    return altura
  }
  method crecer(){
    altura = altura + 1
  }
  method recibirAtaque(unaPotencia) {}
  
  method darValor(){
    altura * 2
  }
  method recibirTrabajo(){
    altura = altura + 1
  }
}