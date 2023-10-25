//switch

let numero = 3

switch numero{
    case 1:
    print("El numero es 1")
case 2:
    print("El numero es 2")
case 3:
    print("El numero es 3")
case 4...10:
    print("El numero esta entre 4 y 10")
default:
    print("No hay numero")
}

let dia = "miercoles"

switch dia{
case "sabado":
    print("Hoy es sabado")
case "lunes","martes","miercoles":
    print("Hoy es dia de trabajo")
default:
    print("Dia de semana")
}

//for

for i in 1...10{
    print("El numero se repite \(i)")
}

let string = "Palabra"

for letras in string{
    print(letras)
}

var nombres = ["Maria", "Luisa", "Pedro"]

for nombre in nombres{
    print(nombre)
}

//Arrays

print(nombres) // ["Maria", "Luisa", "Pedro"]
print(nombres[0]) // "Maria"
print(nombres.count) // 3 por los registros
print(nombres[2].count) // 5 por Pedro
nombres.append("Lunay") // Agrega a Lunay
print(nombres)
nombres.remove(at: 0) //Elimina a Maria
print(nombres)

//Tuplas
var usuario = ("string", 234, 234.123, true)
print(usuario.1)
let (nombre, edad, teleofono, bool) = usuario
print(nombre)

//funciones
func hola(nombre : String){
    print("Hola", nombre)
}

func suma(valor1: Int, valor2: Int) -> Int{
    return valor1 + valor2
}

let res = suma(valor1: 2, valor2: 1)
print(res)
