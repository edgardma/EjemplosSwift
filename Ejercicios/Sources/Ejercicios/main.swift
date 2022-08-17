var argumento: String = CommandLine.arguments[1]

if (argumento == "1") {
    Challenge0().fizzBuzz()
} else if (argumento == "2") {
    print(Challenge1().isAnagram(wordOne: "PRUEBA", wordTwo:"prueba"))
    print(Challenge1().isAnagram(wordOne: "Roma", wordTwo:"amor"))
    print(Challenge1().isAnagram(wordOne: "prueba", wordTwo:"12121"))
}
