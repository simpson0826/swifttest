//
//  SideMenuViewModel.swift
//  Iparknow
//
//  Created by Mac_iparknow on 2021/6/18.
//

import Foundation

enum SideMenuViewModel: Int,CaseIterable {
    case spot
    case profile
    case payment
    case purchase
    case rent
    
    var title:String{
        switch self {
        case .spot: return "home"
        case .profile: return "page2"
        case .payment: return "page3"
        case .purchase: return "page4"
        case .rent: return "page5"
        }
    }
    
    var imageName:String{
        switch self {
        case .spot: return "house.fill"
        case .profile: return "person.fill"
        case .payment: return "creditcard"
        case .purchase: return "clock.arrow.circlepath"
        case .rent: return "link.circle.fill"
        }
    }
}
