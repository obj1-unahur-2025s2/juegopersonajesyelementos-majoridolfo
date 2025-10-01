object ballesta {
 var flechas = 10

 method potencia(){
    return 4
 }
 method estaCargada(){
    return flechas > 0
 }
 
 method usar(){
    flechas = flechas - 1
 }
 method atacar(unaPotencia){
    self.usar()
}  

}

object jabalina {
 var estaCargada = true 

 method potencia(){
    return 30
 }
 method estaCargada() {
   return estaCargada
 }
 method usar(){
    estaCargada = false
 }
 method atacar(unaPotencia){
    self.usar()
} 
}
