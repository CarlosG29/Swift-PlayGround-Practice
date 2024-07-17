import Foundation


/*
Define una struct Rectangulo con propiedades ancho y alto. Implementa
un método mutating llamado cambiarDimensiones que permita cambiar ambos
valores.*/
/*
struct Rectangulo {
    var ancho: Decimal
    var alto: Decimal
    
    mutating func cambiarDimensiones(ancho: Decimal, alto: Decimal) {
        self.ancho = ancho
        self.alto = alto
    }
}

var rect = Rectangulo(ancho: 5.0, alto: 10.0)
rect.cambiarDimensiones(ancho: 7.0, alto: 14.0)
print("Nuevo ancho: \(rect.ancho), Nuevo alto: \(rect.alto)")
*/


/*
Crea una struct Vector con propiedades x e y. Implementa un método
mutating llamado mover que traslade el vector por un desplazamiento dado.
*/
/*
struct Vector {
    var x: Decimal
    var y: Decimal
    
    mutating func mover(dx: Decimal, dy: Decimal) {
        self.x += dx
        self.y += dy
    }
}

var vector = Vector(x: 5.0, y: 7.0)
vector.mover(dx: 3.0, dy: 4.0)
print("Nuevo x: \(vector.x), Nuevo y: \(vector.y)")
*/


/*
Implementa una clase Circulo con una propiedad radio y una propiedad
calculada area que usa getter y setter.*/
/*
class Circulo {
    var radio: Double
    
    var area: Double {
        get {
            return Double.pi * radio * radio
        }
        set(nuevaArea) {
            radio = sqrt(nuevaArea / Double.pi)
        }
    }
    
    init(radio: Double) {
        self.radio = radio
    }
}

// Ejemplo de uso
let circulo = Circulo(radio: 10.0)
print("Área: \(circulo.area)") // Calcula el área
circulo.area = 80.5 // Cambia el área y ajusta el radio
print("Nuevo radio: \(circulo.radio)")
*/


/*
Crea una struct Rectangulo con propiedades ancho y alto. Implementa
una propiedad calculada perimetro con getter y setter
*/

/*
struct Rectangulo {
    var ancho: Decimal
    var alto: Decimal
    
    var perimetro: Decimal {
        get {
            return 2 * (ancho + alto)
        }
        set(nuevoPerimetro) {
            let nuevoValor = nuevoPerimetro / 4
            ancho = nuevoValor
            alto = nuevoValor
        }
    }
}

// Ejemplo de uso
var rect = Rectangulo(ancho: 7.0, alto: 8.0)
print("Perímetro: \(rect.perimetro)") // Calcula el perímetro
rect.perimetro = 36.0 // Cambia el perímetro y ajusta el ancho y alto
print("Nuevo ancho: \(rect.ancho), Nuevo alto: \(rect.alto)")
*/

/*
Escribe un closure que ordene un array de enteros en orden descendente y
utilízalo para ordenar un array dado.*/
/*
let closure: (Int, Int) -> Bool = { (a: Int, b: Int) -> Bool in
    return a > b
}

var array = [3, 1, 4, 1, 5, 9, 5, 23, 22, 64, 199, 100, 1, 0]
let ordenado = array.sorted(by: closure)
print("Array ordenado: \(ordenado)")
*/

/*
Crea un closure que calcule el factorial de un número dado y utilízalo para
calcular el factorial de 5.*/
/*
let closure: (Int) -> Int = { (n: Int) -> Int in
    if n == 0 || n == 1 {
        return 1
    }
    return n * closure(n - 1)
}

let factorial5 = closure(5)
print("Factorial de 5: \(factorial5)")
*/
