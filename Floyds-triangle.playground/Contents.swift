import UIKit

func floyd(rows: Int)
{
var k = 1
print("Floyd's triangle is:")
print()
for i in 1...rows {
    for j in 1...i {
        print(k, terminator:" ")
        k += 1
    }
    print()
}
}
floyd(rows:5)
