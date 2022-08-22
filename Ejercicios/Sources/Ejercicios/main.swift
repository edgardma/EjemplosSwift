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
} else {
    print("Sin implementación")
}
