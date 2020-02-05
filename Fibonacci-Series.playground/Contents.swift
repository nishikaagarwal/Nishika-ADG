import UIKit

var number1 = 0
var number2 = 1
var next = 1

for _ in 0...5 {
    next = number1 + number2
    number1 = number2
    number2 = next
    print(next)
    }


