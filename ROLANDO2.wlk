import ARTEFACTOS2.*
import LUGARES2.*
import ENEMIGOS2.*


object rolando{
    var property artefactosDeLaMochila = [] //para que lo pueda leer el test 
    const capacidadDeRecoleccionDeLaMochila = 2
    var property cantidadDeVecesQueUtilizoLaEspada = 0   //NO SE ME OCURRE UNA FORMA MEJOR QUE NO SEA GUARDAR DOS VARIABLES CON LA CANTIDAD DE USOS
    var property cantidadDeVecesQueUtilizoElCollar = 0
    var property hechizosDisponibles = [bendicion, invisibilidad, invocacion]
    var property poderDePelea= poderBase + self.poderQueLeAportaCadaArtefactoRecolectado()
    var property poderBase = 6 //EN UN FUTURO PUEDE CAMBIAR 
    var property enemigos = [caterina, archibaldo, astra] // CON LISTA PARA QUE EN UN FUTURO PUEDA AGREGAR MAS ENEMIGOS


method obtenerArtefactoFatalPara(enemigo){ //ME DEVUELVE EL ARTEFACTO si existe
if self.poseeElementoFatalPara(enemigo){
return artefactosDeLaMochila.find({ artefacto => 
        (poderBase + artefacto.poderParaPersonaje(self)) > enemigo.poderDePelea() 
    })} 

}


method poseeElementoFatalPara(enemigo){ //ME DEVUELVE UN BOOLEANO
  return artefactosDeLaMochila.any({ artefacto => 
        (poderBase + artefacto.poderParaPersonaje(self)) > enemigo.poderDePelea() 
    })
}


method esPoderoso(){
  return enemigos.all({ enemigo => self.puedeVencer(enemigo) })
}
method puedeConquistar(morada){
   return (morada.puedeSerConquistadaPor(self))
}

method puedeVencer(enemigo){
    return (enemigo.poderDePelea() < self.poderDePelea())
}
method artefactoMasPoderoso(){
    artefactosDeLaMochila.max({ artefacto => artefacto.poderParaPersonaje(self) })
}

method luchar(){ //incrementa en uno el poder de base
    self.poderDePelea(poderBase +1  + self.poderQueLeAportaCadaArtefactoRecolectado())
}
method poderQueLeAportaCadaArtefactoRecolectado(){
 return artefactosDeLaMochila.sum({ artefacto => artefacto.poderParaPersonaje(self)})
}

method recolectar(artefacto){
    if (self.puedeRecolectar()){
        artefactosDeLaMochila.add(artefacto)
    } else { self.error("No hay espacio suficiente para recolectar")}
}

method puedeRecolectar(){
return (capacidadDeRecoleccionDeLaMochila > artefactosDeLaMochila.size() )
}

method posesionesQueGuardaEnElCastillo(){
  return castillo.artefactos() 
} 

method irAUnLugar(lugar){
    lugar.artefactos().addAll(artefactosDeLaMochila)
    artefactosDeLaMochila.clear()
}

method poseeArtefacto(artefacto){
  return  (self.posesionesQueGuardaEnElCastillo().contains(artefacto) || artefactosDeLaMochila.contains(artefacto))
}

method historialDeEncuentros(){
    return (self.posesionesQueGuardaEnElCastillo() + artefactosDeLaMochila)
}



}




