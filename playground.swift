import Foundation
/*
Escribe una función llamada calcularAreaYPerimetro que
acepte dos parámetros ancho y alto de tipo Double. La función debe devolver
una tupla con el área y el perímetro del rectángulo. Utiliza constantes para los
cálculos y llama a la función con valores de prueba, imprimiendo los resultados.
*/

/*
func calcularAreaYPerimetro(ancho: Double, alto: Double) -> (area: Double, perimetro: Double) {
    let area = ancho * alto
    let perimetro = 2 * (ancho + alto)
    return (area, perimetro)
}

let resultado = calcularAreaYPerimetro(ancho: 5, alto: 10)
print("Área: \(resultado.area)")
print("Perímetro: \(resultado.perimetro)")
*/

/*
Instrucción: Escribe una función llamada calcularAreaTriangulo que acepte
tres parámetros a, b, y c de tipo Double representando los lados de un triángulo.
La función debe validar si los lados forman un triángulo válido y, de ser así,
calcular el área utilizando la fórmula de Herón. Devuelve nil si los datos no son
válidos.
*/
/*
func calcularAreaTriangulo(a: Double, b: Double, c: Double) -> Double? {
    // Verificar si los lados forman un triángulo válido
    if a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a {
        print("Los lados ingresados no forman un triangulo valido")
        return nil
    }
    
    let s = (a + b + c) / 2
    let area = sqrt(s * (s - a) * (s - b) * (s - c))
    return area
}

if let area = calcularAreaTriangulo(a: 3, b: 4, c: 5) {
    print("El área del triángulo es \(area)")
} else {
    print("Datos invalidos para los lados del triangulo")
}
*/
/*
Escribe una función llamada calcularEstadisticas que acepte
un array de enteros y devuelva una tupla con la media, mediana y moda del array.
Implementa la lógica para calcular cada una de estas estadísticas y prueba la
función con un array de ejemplo.*/


/*
func calcularEstadisticas(numeros: [Int]) -> (media: Double, mediana: Double, moda: Int) {
    // Calcular la suma y la media
    let suma = numeros.reduce(0, +)
    let media = Double(suma) / Double(numeros.count)
    
    // Calcular la mediana
    let numerosOrdenados = numeros.sorted()
    let mediana: Double
    if numerosOrdenados.count % 2 == 0 {
        mediana = (Double(numerosOrdenados[numerosOrdenados.count / 2 - 1]) + Double(numerosOrdenados[numerosOrdenados.count / 2])) / 2.0
    } else {
        mediana = Double(numerosOrdenados[numerosOrdenados.count / 2])
    }
    
    // Calcular la moda
    var frecuencia: [Int: Int] = [:]
    for numero in numeros {
        frecuencia[numero, default: 0] += 1
    }
    let moda = frecuencia.max { a, b in a.value < b.value }?.key ?? 0
    
    return (media, mediana, moda)
}

let estadisticas = calcularEstadisticas(numeros: [1, 2, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5])
print("Media: \(estadisticas.media)")
print("Mediana: \(estadisticas.mediana)")
print("Moda: \(estadisticas.moda)")
*/
/*
Escribe dos funciones, sumaMatrices y multiplicarMatrices,
que acepten dos matrices (arrays de arrays de enteros) y devuelvan la matriz
resultado de la suma y la multiplicación, respectivamente. Valida que las
dimensiones de las matrices sean compatibles para cada operación. Prueba las
funciones con matrices de ejemplo*/

/*

func sumaMatrices(matrizA: [[Int]], matrizB: [[Int]]) -> [[Int]]? {
    // Verificar que las matrices tienen las mismas dimensiones
    guard matrizA.count == matrizB.count && matrizA[0].count == matrizB[0].count else {
        print("Las matrices no tienen las mismas dimensiones")
        return nil
    }

    // Inicializar la matriz resultado con las mismas dimensiones
    var matrizResultado = matrizA

    for i in 0..<matrizA.count {
        for j in 0..<matrizA[i].count {
            matrizResultado[i][j] = matrizA[i][j] + matrizB[i][j]
        }
    }

    return matrizResultado
}

if let suma = sumaMatrices(matrizA: [[1, 2], [3, 4]], matrizB: [[5, 6], [7, 8]]) {
    print("Suma de matrices:")
    for fila in suma {
        print(fila)
    }
} else {
    print("No se pudo realizar la suma de matrices.")
}

func multiplicarMatrices(matrizA: [[Int]], matrizB: [[Int]]) -> [[Int]]? {
    guard matrizA[0].count == matrizB.count else {
        print("Las matrices no pueden ser multiplicadas")
        return nil
    }

    let filasA = matrizA.count
    let columnasA = matrizA[0].count
    let columnasB = matrizB[0].count

    var matrizResultado = Array(repeating: Array(repeating: 0, count: columnasB), count: filasA)

    for i in 0..<filasA {
        for j in 0..<columnasB {
            for k in 0..<columnasA {
                matrizResultado[i][j] += matrizA[i][k] * matrizB[k][j]
            }
        }
    }

    return matrizResultado
}

if let producto = multiplicarMatrices(matrizA: [[1, 2], [3, 4]], matrizB: [[5, 6], [7, 8]]) {
    print("Producto de matrices:")
    for fila in producto {
        print(fila)
    }
} else {
    print("No se pudo realizar la multiplicación de matrices.")
}
*/
/*
Escribe una función llamada ordenarPorSeleccion que acepte un
array de enteros y lo ordene utilizando el algoritmo de ordenamiento por selección.
Implementa la lógica del algoritmo y prueba la función con un array de ejemplo.
*/
/*
func ordenarPorSeleccion(array: inout [Int]) {
    for i in 0..<array.count - 1 {
        var minIndex = i
        for j in i + 1..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {
            array.swapAt(i, minIndex)
        }
    }
}

var numeros = [64, 25, 12, 22, 11, 90]
ordenarPorSeleccion(array: &numeros)
print("Array ordenado por selección: \(numeros)")
*/

/*

Crea una clase Grafo que represente un grafo utilizando una lista de
adyacencia. Escribe un método dfs que realice una búsqueda en profundidad
(DFS) desde un nodo inicial y devuelva el recorrido. Implementa y prueba la
función con un grafo de ejemplo
*/

/*
class Grafo {
    var adjList: [Int: [Int]]

    init() {
        adjList = [Int: [Int]]()
    }

    func agregarArista(from: Int, to: Int) {
        if adjList[from] == nil {
            adjList[from] = [Int]()
        }
        adjList[from]?.append(to)
    }

    func dfs(inicio: Int) -> [Int] {
        var visitados = Set<Int>()
        var resultado = [Int]()
        dfsUtil(nodo: inicio, visitados: &visitados, resultado: &resultado)
        return resultado
    }

    private func dfsUtil(nodo: Int, visitados: inout Set<Int>, resultado: inout [Int]) {
        visitados.insert(nodo)
        resultado.append(nodo)

        if let vecinos = adjList[nodo] {
            for vecino in vecinos {
                if !visitados.contains(vecino) {
                    dfsUtil(nodo: vecino, visitados: &visitados, resultado: &resultado)
                }
            }
        }
    }
}

// Ejemplo de uso
let grafo = Grafo()
grafo.agregarArista(from: 1, to: 2)
grafo.agregarArista(from: 1, to: 3)
grafo.agregarArista(from: 2, to: 4)
grafo.agregarArista(from: 3, to: 5)
grafo.agregarArista(from: 4, to: 6)
grafo.agregarArista(from: 5, to: 6)

let resultadoDFS = grafo.dfs(inicio: 1)
print("Resultado de DFS: \(resultadoDFS)")
*/

/*Escribe dos funciones llamadas sumaRecursiva y
sumaIterativa que calculen la suma de los primeros N números naturales. La
primera función debe ser recursiva y la segunda iterativa. Prueba ambas funciones
con un valor de ejemplo.
*/
/*
func sumaRecursiva(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else {
        return n + sumaRecursiva(n - 1)
    }
}

func sumaIterativa(_ n: Int) -> Int {
    var suma = 0
    for i in 1...n {
        suma += i
    }
    return suma
}

let resultadoRecursivo = sumaRecursiva(20)
let resultadoIterativo = sumaIterativa(19)

print("Suma recursiva: \(resultadoRecursivo)")
print("Suma iterativa: \(resultadoIterativo)")
*/

/*
Escribe una función llamada busquedaBinariaRecursiva que
implemente el algoritmo de búsqueda binaria de manera recursiva. La función
debe aceptar un array ordenado de enteros, el valor a buscar, y los índices de
inicio y fin. Devuelve la posición del valor encontrado o nil si no se encuentra.
Prueba la función con un array de ejemplo.
*/
/*
func busquedaBinariaRecursiva(array: [Int], valor: Int, inicio: Int, fin: Int) -> Int? {
    if inicio > fin {
        return nil
    }
    
    let medio = (inicio + fin) / 2
    
    if array[medio] == valor {
        return medio
    } else if array[medio] < valor {
        return busquedaBinariaRecursiva(array: array, valor: valor, inicio: medio + 1, fin: fin)
    } else {
        return busquedaBinariaRecursiva(array: array, valor: valor, inicio: inicio, fin: medio - 1)
    }
}

let numerosOrdenados = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
if let posicion = busquedaBinariaRecursiva(array: numerosOrdenados, valor: 5, inicio: 0, fin: numerosOrdenados.count - 1) {
    print("El valor se encuentra en la posición \(posicion)")
} else {
    print("El valor no se encuentra en el array")
}

*/

/*
Define una clase Coche con propiedades para marca, modelo y
año. Implementa un método describir que devuelva una cadena con la
descripción del coche. Crea una instancia de Coche y llama al método
describir.
*/
/*

class Coche {
    var marca: String
    var modelo: String
    var año: Int

    init(marca: String, modelo: String, año: Int) {
        self.marca = marca
        self.modelo = modelo
        self.año = año
    }

    func describir() -> String {
        return "Coche: \(marca) \(modelo), Año: \(año)"
    }
}

let miCoche = Coche(marca: "Toyota", modelo: "Corolla", año: 20209)
print(miCoche.describir())
*/
/*
Define un struct Rectángulo con propiedades para ancho y alto.
Implementa métodos para calcular el área y el perímetro. Crea una instancia de
Rectángulo y llama a los métodos para imprimir el área y el perímetro.
*/

/*
struct Rectangulo {
    var ancho: Double
    var alto: Double

    func calcularArea() -> Double {
        return ancho * alto
    }

    func calcularPerimetro() -> Double {
        return 2 * (ancho + alto)
    }
}

let miRectangulo = Rectangulo(ancho: 5.0, alto: 10.0)
print("Área: \(miRectangulo.calcularArea())")
print("Perímetro: \(miRectangulo.calcularPerimetro())")
*/

/*
Define un protocolo Volable con un método volar. Crea dos
clases Pájaro y Avión que conformen al protocolo Volable. Implementa el
método volar en ambas clases con una implementación específica para cada
una. Crea instancias de ambas clases y llama al método volar.
*/


/*
protocol Volable {
    func volar() -> String
}

class Pajaro: Volable {
    func volar() -> String {
        return "El pájaro está volando"
    }
}

class Avion: Volable {
    func volar() -> String {
        return "El avión está despegando"
    }
}

let miPajaro = Pajaro()
let miAvion = Avion()

print(miPajaro.volar())
print(miAvion.volar())
*/













