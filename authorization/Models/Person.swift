//
//  Person.swift
//  authorization
//
//  Created by Елена Логинова on 24.12.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    
    let person: Person
}

struct Person {
    let name: String
    let surname: String
    
    let dayOfBirth: Int
    let monthOfBirth: Month
    let yearOfbirth: Int
    
    let town: String
    let egucation: String
    let hobby: [String: String]
}

enum Month: Int {
    case january = 1
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}

extension Person {
    
    var age: Int {
        var age = 0
        
        let dayNow = 13
        let monthNow = Month.january
        let yearNow = 2023
        
        if (monthNow.rawValue > monthOfBirth.rawValue) ||
            (monthNow.rawValue == monthOfBirth.rawValue && dayNow >= dayOfBirth) {
            age = yearNow - yearOfbirth
        } else {
            age = yearNow - yearOfbirth - 1
        }
        return age
    }
    
    var zodiacSign: String {
        let date = (dayOfBirth, monthOfBirth)
        
        switch date {
        case (21...31, .march), (1...20, .april):
            return "aries"
        case (_, .april), (1...20, .may):
            return "taurus"
        case (_, .may), (1...20, .june):
            return "gemini"
        case (_, .june), (1...22, .july):
            return "cancer"
        case (_, .july), (1...22, .august):
            return "leo"
        case (_, .august), (1...22, .september):
            return "virgo"
        case (_, .september), (1...22, .october):
            return "libra"
        case (_, .october), (1...22, .november):
            return "scorpio"
        case (_, .november), (1...21, .december):
            return "sagittarius"
        case (_, .december), (1...19, .january):
            return "capricorn"
        case (_, .january), (1...19, .february):
            return "aquarius"
        default:
            return "risces"
        }
    }
}

extension User {
    static func getUser() -> User {
        User(login: "LenaLog", password: "Password",
             person: Person(name: "Elena", surname: "Loginova",
                            dayOfBirth: 13, monthOfBirth: .june, yearOfbirth: 2000,
                            town: "Moscow",
                            egucation: "incomplete higher education",
                            hobby:
                                ["Баскетбол": "Люблю командные виды спорта. Начала играть в 6 классе. В старших классах играла за сборную города. Сейчас иногда просто могу покидать мяч во дворе",
                                 "Математика": "Со средней школы начала ходить на углубленку по математике. Хороша сдала ЕГЭ, поступила в МГТУ им. Баумана на бюджет. До сих пор люлблю решать сложные задачи",
                                 "Путешествия": "Любовь к различным поезкам проявилась еще в начальной школе. В 10 классе, поехала в Германию по обмену. В ковидные времена ездила пл разным городам Росии. В прошлом году получилось посетить Тайланд. Еще много мест, в которых хочется побывать"
                            ]))
    }
    
}
