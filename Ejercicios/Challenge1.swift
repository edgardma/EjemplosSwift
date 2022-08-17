/*
 * Reto #1
 * ¿ES UN ANAGRAMA?
 * Fecha publicación enunciado: 03/01/22
 * Fecha publicación resolución: 10/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Boolean) según sean o no anagramas.
 * Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
 * NO hace falta comprobar que ambas palabras existan.
 * Dos palabras exactamente iguales no son anagrama.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */
/// HelloCommand.swift
import Foundation
import ConsoleKit

final class HelloCommand: Command {
        
    struct Signature: CommandSignature {

        @Argument(name: "name", help: "The name to say hello")
        var name: String

        @Option(name: "greeting", short: "g", help: "Greeting used")
        var greeting: String?

        @Flag(name: "capitalize", short: "c", help: "Capitalizes the name")
        var capitalize: Bool
    }

    static var name = "hello"
    let help = "This command will say hello to a given name."

    func run(using context: CommandContext, signature: Signature) throws {
        let greeting = signature.greeting ?? "Hello"
        var name = signature.name
        if signature.capitalize {
            name = name.capitalized
        }
        print("\(greeting) \(name)!")
        
        /// progress bar
        let bar = context.console.progressBar(title: "Hello")
        bar.start()
        /// perform some work...
        // bar.fail()
        bar.succeed()
        
        /// input
        let foo = context.console.ask("What?")
        print(foo)
        
        /// secure input
        let baz = context.console.ask("Secure what?", isSecure: true)
        print(baz)
        
        /// choice
        let c = context.console.choose("Make a choice", from: ["foo", "bar", "baz"])
        print(c)

        /// @Tip: look for more options under the context.console property.
    }
}

/// main.swift
import Foundation
import ConsoleKit

let console: Console = Terminal()
var input = CommandInput(arguments: CommandLine.arguments)
var context = CommandContext(console: console, input: input)

var commands = Commands(enableAutocomplete: true)
commands.use(HelloCommand(), as: HelloCommand.name, isDefault: false)

do {
    let group = commands.group(help: "Using ConsoleKit without Vapor.")
    try console.run(group, input: input)
}
catch {
    console.error("\(error)")
    exit(1)
}