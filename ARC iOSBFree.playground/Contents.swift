import UIKit

class A {
    var val = 2
    
    deinit {
        print("dealloc A")
    }
}

// MARK: you should think of this like counters; counter adds to 1 when a reference is held
var a: A? = A()

// reference the object
// MARK: on same object of reference, that is the same address, therefore the counter is added to 2
var a2: A? = a
var a3: A? = a

// test reference changing
a2?.val = 3
a3?.val = 4

print(a?.val, a2?.val, a3?.val)

// change to nil -- sort of like a pointer to null;
// MARK: actually when you do this it will decrement the counter; as long as it is not zero it will not deallocate the actual object address
a2 = nil
a3 = nil
print(a, a?.val)

// MARK: once you call to nil, then no other object holds a reference to what is held in a, so it will be deallocated
// MARK: so I guess when just doing a: A = A() you are making it in the stack, but A? will put it on the heap.
// MARK: NO, all are. In Swift, instances of classes are reference types and are typically allocated on the heap.
a = nil
