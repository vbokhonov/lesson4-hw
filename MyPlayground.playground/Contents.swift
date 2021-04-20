import UIKit

//Задача 1. Создать строку с своим именем, вывести количество символов содержащихся в ней.

let myName = "Valentyn"
print("Name \(myName) has \(myName.count) characters.")

//Задача 2. Создать строку с своим отчеством проверить его на окончание “ич/на”

func checkSecondName (middleName: String) {
    switch middleName.suffix(2) {
    case "ич":
        print("Middle name \(middleName) has suffix \"ич\".")
    case "на":
        print("Middle name \(middleName) has suffix \"на\".")
    default:
        print("Middle name \(middleName) has some other suffix.")
    }
}

checkSecondName(middleName: "Валентинович")

//Задача 3. Cоздать строку, где слитно написано Ваши ИмяФамилия “IvanVasilevich”. Вам нужно разбить на две отдельных строки из предыдущей создать третью, где они обе будут разделены пробелом

func divideString (name: String) {
    
    
}

divideString(name: "ВалентинБохонов")

//Задача 4. Вывести строку зеркально Ось → ьсО не используя reverse (посимвольно)

func reversString(string: String) {
    var chars:[Character] = []
    var reverseChars:[Character] = []
    for characters in string {
        chars.append(characters)
    }
    for i in 0...chars.count-1 {
        reverseChars.append(chars[chars.count-1-i])
    }
        let reverseString = String(reverseChars)
        print(reverseString)
}

reversString(string: "Вкусная Конфета")

//Задача 5. Добавить запятые в строку как их расставляет калькулятор
func addCommas (number: String) {
    var result = ""
    for (index, element) in number.reversed().enumerated() {
        result.insert(element, at: result.startIndex)
        
        if((index + 1) % 3 == 0 && index != number.count - 1) {
            result.insert(",", at: result.startIndex)
        }
    }
    print(result)
}

addCommas(number: "12345678")

//Задача 6. Проверить пароль на надежность от 1 до 5
//This task was done during a lesson

//Задача 7. Сортировка массива не встроенным методом по возрастанию + удалить дубликаты [9, 1, 2, 5, 1, 7]

var arrayOfNumbers = [9, 1, 2, 5, 2, 9, 7, 1, 7, 13, 10, 5, 5, 1]
var set = Array(Set(arrayOfNumbers))
set.sort()
print(set)

//Задача 8. Написать метод, который будет переводить строку в транслит.

func translit(string: String) {
    let dictionary: [Character: String] = ["а": "a", "б": "b", "в": "v", "д": "d", "Д": "D", "м": "m", "я": "ya"]
    var convertedString = ""
    for char in string {
        convertedString.append(dictionary[char] ?? String(char))
    }
    print(convertedString)
}

translit(string: "Дамба")
