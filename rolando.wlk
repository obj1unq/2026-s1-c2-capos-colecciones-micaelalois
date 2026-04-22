object rolando {
    const cantidadDeArtefactosLimite = 2
    //var cantidadDeArtefactosDeLaMochila = artefactosDeLaMochila.size()
    const artefactosDeLaMochila = []
    const historia = []
    var poderDePelea = 0
    const posesiones = []
    const artefactosUtilizados = []
    const morada = castillo

method morada(){
    return morada
}

method morada(_morada){
    morada= _morada
}
method esPoderoso(nacion){
    return self.puedeVencerA(nacion)

}


method puedeVencerA(enemigo){
    return (self.poderDePelea() > enemigo.poderDePelea())
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

 method posesiones(){
    return posesiones
 }

   method artefactoEsPosesion(artefacto){ //VERIFICA QUE EL ARTEFACTO ESTE EN LA MOCHILA O CASTILLO
    return posesiones.contains(artefacto)
   }

    method poderDePelea(){
        return poderDePelea
    }

    method poderDePelea(_poder){ //SETTER
        poderDePelea = poderDePelea + _poder
    }


    method historia(){
        return historia
    }


    method poseeArtefacto(artefacto){
        return posesiones.contains(artefacto) // PARA SABER SI ESTÁ EN LA LISTA
    }

    
    
    method irALugar(morada){
        artefactosDeLaMorada = artefactosDeLaMorada + artefactosDeLaMochila
        artefactosDeLaMochila.clear()
        
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
    return personaje.artefactoEsPosesion(artefacto)artefactosUtilizados.occurrencesOf(artefacto) // cantidad de veces que aparece elemento en lista

}

    method recolectarArtefacto(artefacto){
        if (self.mochilaTieneCapacidad()){
            artefactosDeLaMochila.add(artefacto)
            historia.add(artefacto)
            posesiones.add(artefacto)
        }
    }



}







