import UIKit

class A {
    var val = 2
    
    deinit {
        print("dealloc A")
    }
}

// instance will be immediately deallocated because the variable is weak!
// immediately deleted in the next line.
weak var a: A? = A()
print("a is \(a)") // prints a is nil

var a2: A? = a
var a3: A? = a

a2?.val = 3
a3?.val = 4

print(a?.val, a2?.val, a3?.val)

a2 = nil
a3 = nil
print(a, a?.val)

a = nil
