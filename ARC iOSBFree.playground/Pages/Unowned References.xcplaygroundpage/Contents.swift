import UIKit

class A {
    var val = 2
    
    deinit {
        print("dealloc A")
    }
}

// unowned means it is not owned by anyone, and therefore doesn't add to the counter system
// in weak you have the safety of everything that is referencing the weak reference will go to nil, which is intended
// but if you don't want the references to be nil but you want the thing to be released from memory
// this will give SIGABRT error because basically the memory address is not owned so no permissions to overwrite
// ALSO, still gets deallocated since we are not increasing the counter, so immediately deallocated
// but the address still exists in the stack
unowned var a: A? = A()
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
