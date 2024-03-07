class Calculator {
    let addOperation: AddOperation
    let subtractOperation: SubtractOperation
    let multiplyOperation: MultiplyOperation
    let divideOperation: DivideOperation
    let remainderOperation: RemainderOperation
    
    init(
        addOperation: AddOperation,
        subtractOperation: SubtractOperation,
        multiplyOperation: MultiplyOperation,
        divideOperation: DivideOperation,
        remainderOperation: RemainderOperation
    ) {
        self.addOperation = addOperation
        self.subtractOperation = subtractOperation
        self.multiplyOperation = multiplyOperation
        self.divideOperation = divideOperation
        self.remainderOperation = remainderOperation
    }
    
    func calculate(oper: String, firstNum: Int, secondNum: Int) -> Double {
        switch oper {
        case "+":
            return addOperation.operate(firstNum: firstNum, secondNum: secondNum)
        case "-":
            return subtractOperation.operate(firstNum: firstNum, secondNum: secondNum)
        case "*":
            return multiplyOperation.operate(firstNum: firstNum, secondNum: secondNum)
        case "/":
            return divideOperation.operate(firstNum: firstNum, secondNum: secondNum)
        case "%":
            return remainderOperation.operate(firstNum: firstNum, secondNum: secondNum)
        default:
            return 0
        }
    }
}

class AddOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double {
        return Double(firstNum + secondNum)
    }
}

class SubtractOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double {
        return Double(firstNum - secondNum)
    }
}

class MultiplyOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double {
        return Double(firstNum * secondNum)
    }
}

class DivideOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double {
        return Double(firstNum / secondNum)
    }
}

class RemainderOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double {
        return Double(firstNum % secondNum)
    }
}

let addOperation = AddOperation()
let subtractOperation = SubtractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()
let remainderOperation = RemainderOperation()

let calculator = Calculator(addOperation: addOperation,
                            subtractOperation: subtractOperation,
                            multiplyOperation: multiplyOperation,
                            divideOperation: divideOperation,
                            remainderOperation: remainderOperation)

let addResult = calculator.calculate(oper: "+", firstNum: 10, secondNum: 5)
let subtractResult = calculator.calculate(oper: "-", firstNum: 10, secondNum: 5)
let multiplyResult = calculator.calculate(oper: "*", firstNum: 10, secondNum: 5)
let divideResult = calculator.calculate(oper: "/", firstNum: 10, secondNum: 5)
let remainderResult = calculator.calculate(oper: "%", firstNum: 10, secondNum: 5)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")
