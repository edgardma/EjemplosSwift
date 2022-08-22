/*
 * Reto #3
 * ¿ES UN NÚMERO PRIMO?
 * Fecha publicación enunciado: 17/01/22
 * Fecha publicación resolución: 24/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

 class Challenge3 {
    func printFisrt100PrimeNumbers() {
        for i in 1...100 {
            if (isPrime(number: i)) {
                print(String(i) + ", ", terminator: "")
            }
        }
        print("")
    }

    func isPrime(number: Int) -> Bool {
        
        if (number < 2) {
            return false
        } 
        
       for i in stride(from: 2, to: number - 1, by: 1) {
            
            if ((number % i ) == 0) {
                return false
            }

        } 

        return true
    }
 }