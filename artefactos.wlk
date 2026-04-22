object espada{
    var poder = poderDeLaEspadaEnPersonaje(personaje)
    

method poderDeLaEspadaEnPersonaje(personaje){
    if (personaje.elPersonajeUtilizoElArtefacto(espada)){
        poder = personaje.poder()/ 2
    } else { poder = personaje.poderDePelea()
}
}

method poder(){
    return poder
}

}


object collar{
     var poder = poderDelCollarEnPersonaje(personaje)


method poderDelCollarEnPersonaje(personaje){
    if(personaje.poderDePelea()>6){
        return (3+ personaje.cantidadDeVecesQueElPersonajeUtilizoElArtefacto(collar))
    } else { return 3

}
}
method poder(){
    return poder
}

}


object libro{
    var poder = poderDelLibroEnPersonaje(personaje)
    var hechizos= [bendicion, invisibilidad, invocacion]

method usar(){
    if(not hechizos.isempty())   //isempty LA LISTA NO ES
    hechizos = hechizos.remove(hechizos.first()) // LISTA SIN EL PRIMER ELEMENTO (1)

}

method hechizos(){
    return hechizos
}
method poder(){
    return poder
}

method poderDelLibroEnPersonaje(personaje){
    hechizos.first() 
    }

object bendicion{

method poder(){
    return 4
}

}

object invisibilidad{

method poderDePelea(personaje){
    return personaje.poderDePelea()
}

}

object invocacion{

method poderDePelea(){
    return  personaje.morada().artefactoMasPoderoso(personaje).poder()
}
}


object armadura{
var poder= 6
    
method poder(){
        return poder
    
}

}

