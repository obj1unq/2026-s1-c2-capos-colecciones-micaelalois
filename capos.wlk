object rolando {
    var cantidadDeArtefactosLimite = 2
    var tamañoDeLaMochila= 0
    var cantidadDeArtefactosDeLaMochila = artefactosDeLaMochila.size()
    var artefactosDeLaMochila = []
    var artefactosDelCastillo= []
    var historia = []
    var poderDePelea = 0

    method poderDePelea(){
        return poderDePelea
    }

    method poderDePelea(_poder){
        poderDePelea = poderDePelea + _poder
    }


    method historia(){
        return historia
    }

    
    method posesiones(){
        return  artefactosDeLaMochila + artefactosDelCastillo
    }

     

    method poseeArtefacto(artefacto){
        return posesiones.contains(artefacto) // PARA SABER SI ESTÁ EN LA LISTA
    }

    method irAlCastillo(){

        artefactosDelCastillo = artefactosDelCastillo + artefactosDeLaMochila
        artefactosDeLaMochila = []

    }
    method tamañoDeLaMochila(){
        return tamañoDeLaMochila
    }

    method mochilaTieneCapacidad(){
        return self.cantidadDeArtefactosDeLaMochila() < cantidadDeArtefactosLimite
    }
    
    method cantidadDeArtefactosDeLaMochila(_cantidad){
        cantidadDeArtefactosDeLaMochila= _cantidad
    }

    method artefactosDeLaMochila(){
        return artefactosDeLaMochila
    }

    method cantidadDeArtefactosDeLaMochila(){
        return cantidadDeArtefactosDeLaMochila

    }
    method tamañoDeLaMochila(_tamaño){
        tamañoDeLaMochila = _tamaño
    }

    method recolectarArtefacto(artefacto){
        if (self.mochilaTieneCapacidad()){
            artefactosDeLaMochila = artefactosDeLaMochila.add(artefacto)
            historia= historia.add(artefacto)
        }
    }
}



