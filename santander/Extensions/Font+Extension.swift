//
//  Font+Extension.swift
//  santander
//
//  Created by Elias Dinar on 21/5/26.
//

import SwiftUI


extension Font {
    
    static var santanderTitle: Font {
        .custom("Lato-Bold", size: 32, relativeTo: .title)
    }
    
    static var santanderHeadline: Font {
        .custom("Lato-Bold", size: 26, relativeTo: .headline)
    }
    
    static var santanderSubtitle: Font {
        .custom("Lato-Bold", size: 22, relativeTo: .headline)
    }
    
    static var santanderBody: Font {
        .custom("Lato-Regular", size: 16, relativeTo: .body)
    }
    
    static var santanderCaption: Font {
        .custom("Lato-Regular", size: 12, relativeTo: .caption)
    }
}
