import UIKit


var results: [Int] = []

for n in 1...100 {
    // Enter your code below
    if n % 2 != 0 && n % 7 == 0  {
        results.append(n)
    }
    // End code
}
