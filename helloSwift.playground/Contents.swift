import PlaygroundSupport

var greeting = "Hola Luani"
print(greeting)

var nombre : String = "Luani"
print(nombre)

var nombre3 : String? //Puede ser nulo
nombre3 = "Lucas"
print(nombre3 ?? "No hay nombre")

let nombreConstante = "Esto es una constante"
print(nombreConstante)
//nombreConstante = "Nuevo Valor"


//String
let texto = """
Esto es un texto y
salto
"""

let valor1 = "Hola"
let valor2 = "Mundo"
print(valor1+" "+valor2)
print(valor1,valor2)
print("Hola",valor2)
print("hola \(valor2)")
var emoji = "Hola 😍"
var caracter : Character = "s"
print(emoji)
emoji.append(caracter)


//contar
print(emoji.count)
let vacio = ""
if vacio.isEmpty{
    print("El string esta vacio")
}else{
    print("El string no esta vacio")
}

//prefix
print(emoji.prefix(4))

//opcionales

var numero : Int?
print(numero ?? "Sin valor")
numero = 23
//optional binding
/*if let edad = numero{
    print("La edad es:", edad)
}else{
    print("Sin valor")
}
*/

func edad(edad: Int?){
    guard let age = edad else {
        print("Escribe la edad")
        return
    }
    print("Mi edad es", age)
}
edad(edad: numero)


//Transformar un tipo de dato

let num1 = "10"
let num2 = 20

let suma = Int(num1)! + num2
print(suma)

//condicional If

let edad = 24
// ==, ===, <=, >=, && AND, OR ||
if edad >= 18 && edad < 20 {
    //true
    print("El usuario tiene 18 años")
}else{
    //false
    print("Menor de 18 años")
}
