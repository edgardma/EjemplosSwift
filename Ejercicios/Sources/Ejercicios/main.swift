var argumento: String = CommandLine.arguments[1]

if (argumento == "0") {
    Challenge0().fizzBuzz()
} else if (argumento == "1") {
    print(Challenge1().isAnagram(wordOne: "PRUEBA", wordTwo:"prueba"))
    print(Challenge1().isAnagram(wordOne: "Roma", wordTwo:"amor"))
    print(Challenge1().isAnagram(wordOne: "prueba", wordTwo:"12121"))
} else if (argumento == "2") {
    Challenge2().fibonacci()
} else if (argumento == "3") {
    Challenge3().printFisrt100PrimeNumbers()
} else if (argumento == "4") {
    Challenge4().area(polygon: Triangle(base: 10, height: 5))
    Challenge4().area(polygon: Rectangle(length: 5, width: 7))
    Challenge4().area(polygon: Square(side: 4))
} else {
    print("Sin implementación")
}
