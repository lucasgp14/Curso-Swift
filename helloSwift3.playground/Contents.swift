class Personas{
    //propiedades
    var nombre : String
    var edad : Int
    
    //constructor
    init(nom : String, edad : Int) {
        self.nombre = nom
        self.edad = edad
    }
    
    //metodos
    func hola () -> String{
        return "Hola desde la clase Personas"
    }
}

let persona = Personas(nom: "Lunay", edad: 23)
let persona1 = Personas(nom: "Lucas", edad: 22)
print(persona.nombre)
print(persona1.edad)
print(persona.hola())
