/*
 * Reto #4
 * ÁREA DE UN POLÍGONO
 * Fecha publicación enunciado: 24/01/22
 * Fecha publicación resolución: 31/01/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

class Challenge4 {
    func area(polygon: Polygon) {
        polygon.printArea()
    }
}

protocol Polygon {
    func area() -> Double
    func printArea()
}

 class Triangle : Polygon {
     let base : Double
     let height : Double
     
     init(base: Double, height: Double) {
        self.base = base
        self.height = height
     }

     func area() -> Double {
         return (self.base * self.height) / 2
     }

     func printArea() {
         print("El área del triangulo es " + String(self.area()))
     }

 }

 class Rectangle : Polygon {
     let length : Double
     let width : Double
     
     init(length: Double, width: Double) {
        self.length = length
        self.width = width
     }

     func area() -> Double {
         return self.length * self.width
     }

     func printArea() {
         print("El área del rectangulo es " + String(self.area()))
     }

 }

 class Square : Polygon {
     let side : Double

     init (side: Double) {
        self.side = side
     }

     func area() -> Double {
        return self.side * self.side
     }
     
     func printArea() {
         print("El área del cuadrado es " + String(self.area()))
     }

 }