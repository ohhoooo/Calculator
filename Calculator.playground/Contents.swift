class Calculator {
    func calculate(oper: String, firstNum: Int, secondNum: Int) -> Double {
        switch oper {
        case "+":
            return Double(firstNum + secondNum)
        case "-":
            return Double(firstNum - secondNum)
        case "*":
            return Double(firstNum * secondNum)
        case "/":
            return Double(firstNum / secondNum)
        default:
            return 0
        }
    }
}

let calculator = Calculator()
let addResult = calculator.calculate(oper: "+", firstNum: 10, secondNum: 5)
let subtractResult = calculator.calculate(oper: "-", firstNum: 10, secondNum: 5)
let multiplyResult = calculator.calculate(oper: "*", firstNum: 10, secondNum: 5)
let divideResult = calculator.calculate(oper: "/", firstNum: 10, secondNum: 5)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
