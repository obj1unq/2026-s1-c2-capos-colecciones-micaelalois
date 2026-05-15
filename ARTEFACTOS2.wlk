import ROLANDO2.*


object espada{

method poderParaPersonaje(personaje){
    if (personaje.cantidadDeVecesQueUtilizoLaEspada()<1){
        return personaje.poderBase()
    } else { return personaje.poderBase()/2}
}

method usarPor(personaje){ //CANTIDADDEVECESQUEUTILIZOLAESPADA USA EL SETTER POR SER VAR PROPERTY
    personaje.cantidadDeVecesQueUtilizoLaEspada(personaje.cantidadDeVecesQueUtilizoLaEspada() +1 )  
}

}

object collar{
method poderParaPersonaje(personaje){
    if (personaje.poderBase()<= 6){
       return 3
        } else { return 3 + personaje.cantidadDeVecesQueUtilizoElCollar()}
    
}

method usarPor(personaje){
    personaje.cantidadDeVecesQueUtilizoElCollar(personaje.cantidadDeVecesQueUtilizoElCollar() +1 )  
}
}

object armadura{

method poderParaPersonaje(personaje){
    return 6
}


}


object libro{

method usarPor(personaje){
    personaje.hechizosDisponibles().remove(personaje.hechizosDisponibles().first())

}
method poderParaPersonaje(personaje){
    if (personaje.hechizosDisponibles().isEmpty()){
        return 0
    } else {
    return personaje.hechizosDisponibles().poder(personaje.hechizosDisponibles().first())}

}
}

//TODOS LOS HECHIZOS ENTIENDEN PODER 
object bendicion{

method poder(personaje){
    return 4
}
}
object invisibilidad{
    method poder(personaje){
        return personaje.poderDePelea()
    }
}

object invocacion{
    method poder(personaje){
        return personaje.artefactoMasPoderoso().poderParaPersonaje(personaje)
    }
}




