object rolando {
    var cantidadDeArtefactosLimite = 2
    //var cantidadDeArtefactosDeLaMochila = artefactosDeLaMochila.size()
    var artefactosDeLaMochila = []
    var artefactosDelCastillo= []
    var historia = []
    var poderDePelea = 0
    var posesiones = []
    var artefactosUtilizados = []

//MODELAR CASTILLO COMO OBJETO 
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

    method irAlCastillo(){
        artefactosDelCastillo = artefactosDelCastillo + artefactosDeLaMochila
        artefactosDeLaMochila.clear()
    }
// PENSAR ESTO, DEBO DEFINIR CASTILLO COMO OBJETO
    method llegarA(lugar){
        lugar. 
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
    

    method recolectarArtefacto(artefacto){
        if (self.mochilaTieneCapacidad()){
            artefactosDeLaMochila.add(artefacto)
            historia.add(artefacto)
            posesiones.add(artefacto)
        }
    }

}

object espada{
    var poder = poderDeLaEspadaEnPersonaje(personaje)
    

method poderDeLaEspadaEnPersonaje(personaje){
    if (personaje.elPersonajeUtilizoElArtefacto(espada)
        poder = personaje.poder()/ 2
    } else { poder = personaje.poderDePelea()
    }



method poder(){
    return poder
}
}

object collar{

}

object libro{

}

object armadura{
    
}

