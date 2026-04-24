object rolando {
    const cantidadDeArtefactosLimite = 2
    const artefactosDeLaMochila = []
    const historia = []
    const artefactosUtilizados = []
    var morada = castillo //NO ES CONST YA QUE PUEDE CAMBIAR DE MORADA 
    var   poder = 5

method luchar(){
    artefactosDeLaMochila.forEach({a => a.usar()})
    poder = poder +1
}
method poder(){
    return poder
}
method morada(){
    return morada
}

method morada(_morada){
    morada= _morada
}
method esPoderoso(nacion){
    return tierraDeErethia.enemigo().all({enemigo => self.puedeVencerA(enemigo)}) //INDICA QUE VENCE A TODOS LOS ENEMIGOS
    

}


method puedeVencerA(enemigo){
    return (self.poder > enemigo.poder())
}
// VER COMO ENTRAR EN REGISTROS 
method puedeConquistar(morada){
    return self.puedeVencerAlDueñoDeLaMorada(morada)
}

//volver a hacer
method puedeVencerAlDueñoDeLaMorada(morada){
    return self.puedeVencerA(enemigo.morada()) // preguntar 
}


method artefactosUtilizados(){
    return artefactosUtilizados
}

method tamañoDeLaMochila(){
    return artefactosDeLaMochila.size()
}

 method posesiones(){ //NO HACE FALTA GUARDAR ESTA LISTA EN UNA VARIABLE, YA QUE EL METODO ME DEVUELVE
 //INFORMACIÓN CALCULADA EN EL MOMENTO 
     return artefactosDeLaMochila + castillo.artefactosDeLaMorada()

 }

   method artefactoEsPosesion(artefacto){ //VERIFICA QUE EL ARTEFACTO ESTE EN LA MOCHILA O CASTILLO
    return posesiones.contains(artefacto)
   }

    method poder(self){
        return (poder + artefactosDeLaMochila.sum({a => a.poder(self)}))
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







