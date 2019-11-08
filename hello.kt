
fun main() {
    println("Hello")
    var anders = Dog(name = "anders", weight = 12, height = 3)
    println(Dogs.num())
    println(anders.name)
}

class Dog(var name: String = "asds", var weight: Int = 0, var height: Int = 0)

object Dogs {
    val a = 0
    fun num() {
        println("The number is ")
        println("1+2")
    }
}
