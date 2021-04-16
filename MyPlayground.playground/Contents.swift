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

