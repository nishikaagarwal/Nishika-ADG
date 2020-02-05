import UIKit

var number1 = 0
var number2 = 1
var next = 0

func fibonacci(n: Int)
{for _ in 0...n {
    print(next)
    next = number1 + number2
    number1 = number2
    number2 = next
    }
}
print(number1)
fibonacci(n:5)

