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
        return (3+ personaje.cantidadDeVecesQueElPersonajeUtilizoElArtefacto(collar))
    } else { 
         return 3
    } 
}
method usar(){

}

}


object libro{
    var hechizos= [bendicion, invisibilidad, invocacion]

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


