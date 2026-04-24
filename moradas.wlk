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

method recibirArtefactos(lista){
    artefactosDeLaMorada.addAll(lista)
}
}

object palacioDeMarmol{

method recibirArtefactos(lista){
    artefactosDeLaMorada.addAll(lista)
}
}

object torreDeMarfil{

method recibirArtefactos(lista){
    artefactosDeLaMorada.addAll(lista)
}
}