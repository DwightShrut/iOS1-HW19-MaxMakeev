//
//  Icons.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 07.10.2025.
//
import UIKit

enum Icons {
    static let airplane = UIImage(
        systemName: "airplane")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let wifi = UIImage(
        systemName: "wifi")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let bluetooth = UIImage(
        named: "bluetooth")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .medium
        )).withTintColor(.white)
    static let antenna = UIImage(
        systemName: "antenna.radiowaves.left.and.right")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .medium
        ))
    static let chain = UIImage(
        systemName: "personalhotspot")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .medium
        ))
    static let battery = UIImage(
        systemName: "battery.100percent")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 13,
            weight: .light
        ))
    static let vpn = UIImage(
        systemName: "network")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let notifications = UIImage(
        systemName: "bell.badge.fill")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let volume = UIImage(
        systemName: "speaker.wave.3.fill")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let moon = UIImage(
        systemName: "moon.fill")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let viewTime = UIImage(
        systemName: "hourglass")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let gear = UIImage(
        systemName: "gear")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let accessibility = UIImage(
        systemName: "accessibility")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let camera = UIImage(
        systemName: "camera.fill")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let wallpaper = UIImage(
        systemName: "photo.artframe")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let await = UIImage(
        systemName: "calendar.badge.clock")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let glass = UIImage(
        systemName: "magnifyingglass")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let switch2 = UIImage(
        systemName: "switch.2")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let apps = UIImage(
        systemName: "apps.ipad")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let sun = UIImage(
        systemName: "sun.max.fill")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let siri = UIImage(
        systemName: "bonjour")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        )).withTintColor(.magenta)
    static let faceID = UIImage(
        systemName: "faceid")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let sos = UIImage(
        systemName: "sos")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
    static let confidentional = UIImage(
        systemName: "hand.raised.fill")?.withConfiguration(UIImage.SymbolConfiguration(
            pointSize: 15,
            weight: .light
        ))
}
