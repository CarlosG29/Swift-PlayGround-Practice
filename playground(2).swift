import Foundation


/*
Implementar una enumeración EstadoPedido con casos procesando, enviado, y
entregado. Crear un protocolo NotificacionPedido con un método
notificarCambioDeEstado. Implementar una clase Pedido que tenga una propiedad
estado de tipo EstadoPedido y una propiedad delegado de tipo
NotificacionPedido. Crear una función que cambie el estado del pedido y notifique al
delegado.*/
/*
enum EstadoPedido {
    case procesando
    case enviado
    case entregado
}

protocol NotificacionPedido {
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido)
}

class Pedido {
    var estado: EstadoPedido
    var delegado: NotificacionPedido?

    init(estado: EstadoPedido) {
        self.estado = estado
    }

    func cambiarEstado(nuevoEstado: EstadoPedido) {
        estado = nuevoEstado
        delegado?.notificarCambioDeEstado(nuevoEstado: nuevoEstado)
    }
}

class GestorPedido: NotificacionPedido {
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido) {
        print("El estado del pedido ha cambiado a: \(nuevoEstado)")
    }
}

// Ejemplo de uso
let gestor = GestorPedido()
let pedido = Pedido(estado: .procesando)
pedido.delegado = gestor
pedido.cambiarEstado(nuevoEstado: .enviado)
*/

/*
Crear una clase Calculadora con funciones estáticas sumar y restar. Implementar
una función que acepte un array de enteros y use las funciones estáticas para calcular la
suma y la resta total de los elementos del array.*/

/*
class Calculadora {
    static func sumar(a: Int, b: Int) -> Int {
        return a + b
    }
    
    static func restar(a: Int, b: Int) -> Int {
        return a - b
    }
}

func calcularSumaYRestaTotales(numeros: [Int]) -> (sumaTotal: Int, restaTotal: Int) {
    var sumaTotal = 0
    var restaTotal = 0
    
    for numero in numeros {
        sumaTotal = Calculadora.sumar(a: sumaTotal, b: numero)
        restaTotal = Calculadora.restar(a: restaTotal, b: numero)
    }
    
    return (sumaTotal, restaTotal)
}

// Ejemplo de uso
let numeros = [1, 2, 3, 4, 5,6,7,8]
let resultado = calcularSumaYRestaTotales(numeros: numeros)
print("Suma total: \(resultado.sumaTotal)")
print("Resta total: \(resultado.restaTotal)")
*/
/*
Crear un protocolo Figura con un método calcularArea. Implementar
estructuras Cuadrado y Rectangulo que conformen al protocolo Figura. Crear una
función que acepte un array de Figura y calcule el área total de todas las figuras*/
/*
protocol Figura {
    func calcularArea() -> Double
}

struct Cuadrado: Figura {
    var lado: Double
    
    func calcularArea() -> Double {
        return lado * lado
    }
}

struct Rectangulo: Figura {
    var ancho: Double
    var alto: Double
    
    func calcularArea() -> Double {
        return ancho * alto
    }
}

func calcularAreaTotal(figuras: [Figura]) -> Double {
    var areaTotal = 0.0
    
    for figura in figuras {
        areaTotal += figura.calcularArea()
    }
    
    return areaTotal
}

// Ejemplo de uso
let cuadrado = Cuadrado(lado: 4.0)
let rectangulo = Rectangulo(ancho: 5.0, alto: 5.0)
let figuras: [Figura] = [cuadrado, rectangulo]

let areaTotal = calcularAreaTotal(figuras: figuras)
print("Área total: \(areaTotal)")
*/
/*
Implementar una enumeración OperacionMatematica con casos suma, resta,
multiplicacion, y division. Crear una clase OperadorMatematico con una
función estática realizarOperacion que acepte dos números y un caso de
OperacionMatematica, y devuelva el resultado de la operación.*/

/*

enum OperacionMatematica {
    case suma
    case resta
    case multiplicacion
    case division
}

class OperadorMatematico {
    static func realizarOperacion(a: Double, b: Double, operacion: OperacionMatematica) -> Double {
        switch operacion {
        case .suma:
            return a + b
        case .resta:
            return a - b
        case .multiplicacion:
            return a * b
        case .division:
            if b != 0 {
                return a / b
            } else {
                print("Error: División por cero")
                return 0
            }
        }
    }
}

// Ejemplo de uso
let resultadoSuma = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: .suma)
print("Resultado de la suma: \(resultadoSuma)")

let resultadoDivision = OperadorMatematico.realizarOperacion(a: 10, b: 0, operacion: .division)
print("Resultado de la división: \(resultadoDivision)")
*/

/*
Crear un protocolo Empleado con un método calcularSalario. Implementar una
clase EmpleadoBase y una estructura EmpleadoContrato que conformen al protocolo
Empleado. Crear una función que acepte un array de Empleado y calcule el salario total
de todos los empleados.*/

protocol Empleado {
    func calcularSalario() -> Double
}

class EmpleadoBase: Empleado {
    var salarioBase: Double
    
    init(salarioBase: Double) {
        self.salarioBase = salarioBase
    }
    
    func calcularSalario() -> Double {
        return salarioBase
    }
}

struct EmpleadoContrato: Empleado {
    var tarifaHora: Double
    var horasTrabajadas: Double
    
    func calcularSalario() -> Double {
        return tarifaHora * horasTrabajadas
    }
}

func calcularSalarioTotal(empleados: [Empleado]) -> Double {
    var salarioTotal = 0.0
    
    for empleado in empleados {
        salarioTotal += empleado.calcularSalario()
    }
    
    return salarioTotal
}

// Ejemplo de uso
let empleadoBase = EmpleadoBase(salarioBase: 99999.0)
let empleadoContrato = EmpleadoContrato(tarifaHora: 100.0, horasTrabajadas: 160.0)
let empleados: [Empleado] = [empleadoBase, empleadoContrato]

let salarioTotal = calcularSalarioTotal(empleados: empleados)
print("Salario total: \(salarioTotal)")
