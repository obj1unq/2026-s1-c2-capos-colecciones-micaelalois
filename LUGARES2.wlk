import ROLANDO2.*
import ENEMIGOS2.*
object castillo{
    var property artefactos = []


method poseeArtefacto(artefacto){
  return  (artefactos.contains(artefacto))
}
}

object fortalezaDeAcero{
 var property dueño = caterina   //CON UN SETTER PARA QUE CUANDO LO CONQUISTE PUEDA CAMBIAR EL DUEÑO

 method puedeSerConquistadaPor(personaje){
    return (personaje.poderDePelea() > dueño.poderDePelea())
 }
}
object palacioDeMarmol{
     var property dueño = archibaldo

 method puedeSerConquistadaPor(personaje){
    return (personaje.poderDePelea() > dueño.poderDePelea())
 }

}
object torreDeMarfil{
     var property dueño = astra

method puedeSerConquistadaPor(personaje){
    return (personaje.poderDePelea() > dueño.poderDePelea())
 }

    
}