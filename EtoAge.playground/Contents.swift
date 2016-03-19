//: Playground - noun: a place where people can play

import UIKit

let zodiacs = ["🐭", "🐱", "🐯", "🐰", "🐲", "🐍", "🐴", "🐑", "🐵", "🐔", "🐶", "🐗"]

enum ZodiacType: Int {
    case Mouse = 1
    case Cow
    case Tiger
    case Rabbit
    case Dragon
    case Snake
    case Horse
    case Sheep
    case Monky
    case Bird
    case Dog
    case Pig
}

enum AroundType: Int {
    case Chlid = 12
    case Fresh = 24
    case Prime = 36
    case Middle = 48
    case Old = 60
    case Great = 72
}

let thisYear = { () -> Int in
    let f = NSDateFormatter()
    f.dateFormat = "yyyy"
    return Int(f.stringFromDate(NSDate()))!
}

let zodiacOfthisYear = (thisYear() + 9) % 12

func myZodiacIs(zodiac: ZodiacType, andMyAgeAround: AroundType) -> String {
    let offset = zodiac.rawValue > zodiacOfthisYear ? zodiac.rawValue - zodiacOfthisYear : 12 - zodiacOfthisYear + zodiac.rawValue
    let age = andMyAgeAround.rawValue - offset
    let zodiacEmoji = zodiacs[zodiac.rawValue - 1]
    return "Your zodiac is \(zodiacEmoji) & your age is \(age)"
}

myZodiacIs(.Dog, andMyAgeAround: .Fresh)









