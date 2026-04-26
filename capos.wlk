object rolando {
    const cantidadDeArtefactosLimite = 2
    const artefactosDeLaMochila = []
    const historia = []
    const artefactosUtilizados = []
    var morada = castillo //NO ES CONST YA QUE PUEDE CAMBIAR DE MORADA 
    var   poderBase = 5

method luchar(){
    artefactosDeLaMochila.forEach({a => a.usar()})
     poderBase = poderBase + 1
}

method morada(){
    return morada
}

method cambiarMorada(_morada){
    morada= _morada
}
method esPoderoso(nacion){
    return tierraDeErethia.enemigo().all({enemigo => self.puedeVencerA(enemigo)}) //INDICA QUE VENCE A TODOS LOS ENEMIGOS
    

}


method puedeVencerA(enemigo){
    return (self.poder() > enemigo.poder())
}


// VER COMO ENTRAR EN REGISTROS 

// method puedeConquistar(morada){     
//     return self.puedeVencerAlDueñoDeLaMorada(morada)
// }

//volver a hacer
// method puedeVencerAlDueñoDeLaMorada(morada){
//     return self.puedeVencerA(enemigo.morada()) // preguntar no sé hacer esta línea
// }


method artefactosUtilizados(){
    return artefactosUtilizados
}

method tamañoDeLaMochila(){
    return artefactosDeLaMochila.size()
}

 method posesiones(){ //NO HACE FALTA GUARDAR ESTA LISTA EN UNA VARIABLE, YA QUE EL METODO ME DEVUELVE
 //INFORMACIÓN CALCULADA EN EL MOMENTO 
     return artefactosDeLaMochila + morada.artefactosDeLaMorada()

 }

   method artefactoEsPosesion(artefacto){ //VERIFICA QUE EL ARTEFACTO ESTE EN LA MOCHILA O CASTILLO
    return posesiones.contains(artefacto)
   }

    method poder(){
    return poderBase + artefactosDeLaMochila.sum({a => a.poder(self)})
}
   


    method historia(){
        return historia
    }


    method poseeArtefacto(artefacto){
        return self.posesiones().contains(artefacto) // PARA SABER SI ESTÁ EN LA LISTA
    }

    
    
  method irALugar(unaMorada){
    unaMorada.recibirArtefactos(artefactosDeLaMochila)
    artefactosDeLaMochila.clear()
    morada = unaMorada
}
    
    method mochilaTieneCapacidad(){
        return (artefactosDeLaMochila.size() < cantidadDeArtefactosLimite)
    }
    

    method artefactosDeLaMochila(){
        return artefactosDeLaMochila
    }

   method utilizarArtefacto(artefacto){
    artefactosUtilizados.add(artefacto) 
   }

   method elPersonajeUtilizoElArtefacto(artefacto){
    return artefactosUtilizados.contains(artefacto)
   }
    
   method  cantidadDeVecesQueElPersonajeUtilizoElArtefacto(personaje,artefacto){
     return artefactosUtilizados.occurrencesOf(artefacto)// cantidad de veces que aparece artefacto en lista

}

    method recolectarArtefacto(artefacto){
           historia.add(artefacto) //ESTO NO VA ADENTRO DEL IF, YA QUE EL ENUNCIADO ACLARA QUE SI 
           //NO LO RECOLECTA POR FALTA DE CAPACIDAD, IGUALMENTE HAY QUE AGREGARLO A LA HISTORIA.

        if (self.mochilaTieneCapacidad()){
            artefactosDeLaMochila.add(artefacto)
        }
    }



}

//moradas//

object castillo{ //TERMINAR DE MODELAR 
   var artefactosDeLaMorada= [] 

method recibirArtefactos(lista){
    artefactosDeLaMorada.addAll(lista)
}

method artefactosDeLaMorada(){
    return artefactosDeLaMorada
}


method artefactoMasPoderoso(personaje){
return artefactosDeLaMorada.max({a => a.poder(personaje)})}
}

object fortalezaDeAcero{
   const artefactosDeLaMorada= [] 

method recibirArtefactos(lista){
    artefactosDeLaMorada.addAll(lista)

}
method artefactosDeLaMorada(){
    return artefactosDeLaMorada
}

}

object palacioDeMarmol{
    const artefactosDeLaMorada= [] 


method recibirArtefactos(lista){
    artefactosDeLaMorada.addAll(lista)
}
method artefactosDeLaMorada(){
    return artefactosDeLaMorada
}

}

object torreDeMarfil{
const artefactosDeLaMorada= [] 



method recibirArtefactos(lista){
    artefactosDeLaMorada.addAll(lista)
}
method artefactosDeLaMorada(){
    return artefactosDeLaMorada
}
}


//Naciones//

object tierraDeErethia{
    const enemigo = [caterina, archibaldo, astra]

method enemigo(){
    return enemigo
}
}


//Artefactos//

object espada{


method poder(personaje){
    if (personaje.elPersonajeUtilizoElArtefacto(self)){
        return (personaje.poder()/ 2)
    } else { 
        return  personaje.poder()
}
}


method usar(){
 rolando.utilizarArtefacto(self)
}

}

object collar{


method poder(personaje){
    if(personaje.poder()>6){
        return (3+ personaje.cantidadDeVecesQueElPersonajeUtilizoElArtefacto(self))
    } else { 
         return 3
    } 
}
method usar(){

}

}


object libro{
    const hechizos= [bendicion, invisibilidad, invocacion]

method usar(){
    if(not hechizos.isempty())   //isempty LA LISTA NO ES vacía
    hechizos.remove(hechizos.first()) // LISTA SIN EL PRIMER ELEMENTO (1)
     rolando.utilizarArtefacto(self)

}

method hechizos(_hechizo){
    hechizos.add(_hechizo)
}
method hechizos(){
    return hechizos
}
method poder(personaje){
    if (hechizos.isEmpty()){
        return 0
    } else {
        return hechizos.first().poder(personaje)
    }
}
}

//HECHIZOS//


object bendicion{


method poder(personaje){
    return 4
}

}

object invisibilidad{

method poder(personaje){
    return (personaje.poder())
}

}

object invocacion{

method poder(personaje){
    return  personaje.morada().artefactoMasPoderoso(personaje).poder()
}

}

object armadura{
    
method poder(personaje){
        return 6 
}

method usar(){
 rolando.utilizarArtefacto(self)
}


}


//Enemigos//

object caterina{
    const poderDePelea = 28
    var morada = fortalezaDeAcero

method poderDePelea(){
    return poderDePelea
}

method morada(){
    return morada
}

method cambiarMorada(_morada){
    morada = _morada
}



}

object archibaldo{
   const  poderDePelea = 16
   var  morada = palacioDeMarmol
method poderDePelea(){
    return poderDePelea
}

method morada(){
    return morada
}

method morada(_morada){
    morada = _morada
}

}

object astra{
    const  poderDePelea = 14
    var morada = torreDeMarfil

method poderDePelea(){
    return poderDePelea
}

method morada(){
    return morada
}

method morada(_morada){
    morada = _morada
}

}






