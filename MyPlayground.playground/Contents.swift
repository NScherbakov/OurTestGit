import UIKit
import Combine

//public func example(of description: String,
//                    action: () -> Void) {
//  print("\n——— Example of:", description, "———")
//  action()
//}
//
//
//example(of: "Type erasure") {
//  // 1
//  let subject = PassthroughSubject<Int, Never>()
//
//  // 2
//  let publisher = subject.eraseToAnyPublisher()
//
//  // 3
//  publisher
//    .sink(receiveValue: { print($0) })
//    .store(in: &subscriptions)
//
//  // 4
//  subject.send(0)
//}

class A {
    lazy var classB: B = B(classA: self)
    
    init() {
        print("A init")
    }
    
    deinit {
        print("A deinit")
    }
}

class B {
    var classA: A
    
    init(classA: A) {
        print("B init")
        self.classA = classA
    }
    
    deinit {
        print("B deinit")
    }
}

func createClasses() {
    let classA = A()
    let classB = classA.classB
}

createClasses()
