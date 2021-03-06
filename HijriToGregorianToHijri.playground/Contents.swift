//: Playground - noun: a place where people can play

import UIKit

let dateFormatter = NSDateFormatter()

dateFormatter.dateFormat = "dd-MM-yyyy"


// Gregorian to Hijri

dateFormatter.locale = NSLocale(localeIdentifier: "en_US")

let GregorianDate = dateFormatter.dateFromString("13-07-2016")

let islamic = NSCalendar(identifier: NSCalendarIdentifierIslamicUmmAlQura)

var components = islamic?.components(NSCalendarUnit(rawValue: UInt.max), fromDate: GregorianDate!)

print("\(components!.year) - \(components!.month) - \(components!.day)")


// Hijri to Gregorian

dateFormatter.locale = NSLocale(localeIdentifier: "ar_SA")

let islamicDate = dateFormatter.dateFromString("8-10-1437")

let gregorian = NSCalendar(identifier: NSCalendarIdentifierGregorian)

components = gregorian?.components(NSCalendarUnit(rawValue: UInt.max), fromDate: islamicDate!)

print("\(components!.year) - \(components!.month) - \(components!.day)")
