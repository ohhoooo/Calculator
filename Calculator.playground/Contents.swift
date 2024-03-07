class Calculator {
    var operation: AbstractOperation
    
    init(operation: AbstractOperation) {
        self.operation = operation
    }
    
    func changeOperation(operation: AbstractOperation) {
        self.operation = operation
    }
    
    func calculate(firstNum: Int, secondNum: Int) -> Double {
        return operation.operate(firstNum: firstNum, secondNum: secondNum)
    }
}

protocol AbstractOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double
}

class AddOperation : AbstractOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double {
        return Double(firstNum + secondNum)
    }
}

class SubtractOperation : AbstractOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double {
        return Double(firstNum - secondNum)
    }
}

class MultiplyOperation : AbstractOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double {
        return Double(firstNum * secondNum)
    }
}

class DivideOperation : AbstractOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double {
        return Double(firstNum / secondNum)
    }
}

class RemainderOperation : AbstractOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double {
        return Double(firstNum % secondNum)
    }
}

let addOperation = AddOperation()
let subtractOperation = SubtractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()
let remainderOperation = RemainderOperation()

let calculator = Calculator(operation: addOperation)

let addResult = calculator.calculate(firstNum: 10, secondNum: 5)

calculator.changeOperation(operation: subtractOperation)
let subtractResult = calculator.calculate(firstNum: 10, secondNum: 5)

calculator.changeOperation(operation: multiplyOperation)
let multiplyResult = calculator.calculate(firstNum: 10, secondNum: 5)

calculator.changeOperation(operation: divideOperation)
let firstNum = 10, secondNum = 5
let divideResult = secondNum == 0 ? 0.0 : calculator.calculate(firstNum: firstNum, secondNum: secondNum)

calculator.changeOperation(operation: remainderOperation)
let remainderResult = calculator.calculate(firstNum: 10, secondNum: 5)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")
