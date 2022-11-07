
import Foundation

func printXY(max : Int) {
    for _ in (1..<max) {
        for i in (1...max) {
            print("\(i) ",terminator:"")
        }
        print("")
    }
}

func printLeftTree(lines : Int) {
    for line in 1...lines {
        for _ in 1...line{
            print("$ ",terminator: "")
        }
        print("")
    }
}

func printRightTree(lines : Int) {
    for line in 1...lines {
        for _ in (0..<(lines-line)) {
            print(" ",terminator: "")
        }
        for _ in lines-line ..< lines {
            print("%",terminator: "")
        }
        print("")
    }
}

func printCenterTree(lines : Int) {
    for line in 1...lines {
        for _ in 0...(lines-line) {
            print(" ",terminator: "")
        }
        for _ in 1...line {
            print("* ",terminator: "")
        }
        print("")
    }
}

func printSquareNumber(cloumns : Int) {
    var number:Int = 1
    for _ in 1...cloumns {
        for _ in 1...cloumns {
            print(String(format: "%2d", number),terminator: " ")
            number += 1
        }
    print("")
    }
}

func printTriangleNumbers(lines : Int) {
    var number : Int = 1
    for line in 1...lines {
        for _ in 1...line{
            print(String(format: "%02d", number),terminator: " ")
            number += 1
        }
        print("")
    }
}

func printReverseNumber(cloumns : Int) {
    var number:Int = 0
    for row in 1...cloumns {
        if row % 2 == 1{
            for _ in 1...cloumns {
                number += 1
                print(String(format: "%2d", number),terminator: " ")
            }
            number += 1
        }
        else if row % 2 == 0 {
            for _ in 1...cloumns {
                number -= 1
                print(String(format: "%2d", number),terminator: " ")
            }
            number -= 1
        }
    number += cloumns
    print("")
    }
}

func printDiamond(lines : Int) {
    var weight = 0
    let row = lines%2 == 0 ? lines : lines+2
   
    //상부
    for n in 1...row/2 {
        for _ in 0...row/2-n {
            print(" ",terminator: "")
        }
        for _ in 1...(n + weight) {
            print("*",terminator: "")
        }
        weight += 1
        print("")
    }
   
    //홀수면 중간에 긴놈 하나
    if row % 2 != 0 {
        for _ in 1...row {
            print("*",terminator: "")
        }
        print("")
    }
    
    weight -= 1 //상부과정 끝날때 weight +1 이 되었으니 아다리 맞추기 위해 -1 해준다.
    
    //하부 : 상부를 거꾸로 때려넣으면 끝
    for n in (1...row/2).reversed() {
        
        for _ in (0...row/2-n).reversed() {
            print(" ",terminator: "")
        }
        for _ in (1...(n + weight)).reversed() {
            print("*",terminator: "")
        }
        weight -= 1
        print("")
    }
}

func print3515(lines : Int) -> Array<String> {
    var array : [String]
    array = []
    for number in 1...lines {
        if (number % 3 == 0) && (number % 5 == 0){
            array.append(String("👏🙏"))
        }
        else if (number % 3 == 0) {
            array.append(String("👏"))
        }
        else if (number % 5 == 0) {
            array.append(String("🙏"))
        }
        else {
            array.append(String("\(number)"))
        }
    }
    return array}

let input = Int(readLine()!)!
//printXY(max: input)
//printLeftTree(lines: input)
//printRightTree(lines: input)
//printCenterTree(lines: input)
//printSquareNumber(cloumns: input)
//printTriangleNumbers(lines: input)
//printReverseNumber(cloumns: input)
printDiamond(lines: input)
//print(print3515(lines: input))

