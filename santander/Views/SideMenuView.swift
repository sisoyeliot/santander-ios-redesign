//
//  SideMenuView.swift
//  santander
//
//  Created by Elias Dinar on 24/5/26.
//

import SwiftUI

struct SideMenuView: View {
    var buttons: [(String, String)] = [
        ( "house", "Inicio" ),
        ( "briefcase", "Mis productos" ),
        ( "folder.badge.plus", "Contratar" ),
        ( "applelogo", "Productos Apple" ),
        ( "santander", "Mi espacio" ),
        ( "rosette", "Santander Premia" ),
        ( "lock", "Seguridad y claves"),
        ( "tray.full", "Gestiones" ),
    ]
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text("Elías Dinar Ettouizi")
            }
            ForEach(0..<buttons.count, id: \.self) { index in
                let (image, label) = buttons[index]
                Button (action: {}) {
                    if index == 1 {
                        HStack {
                            Image(systemName: image).frame(width: 25, height: 25).padding([.trailing], 10)
                            Text(label)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                    } else {
                        if index == 4 {
                            Image(image).resizable().frame(width: 25, height: 25).padding([.trailing], 10)
                        } else {
                            Image(systemName: image).frame(width: 25, height: 25).padding([.trailing], 10)
                        }
                        
                        Text(label)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .glassEffect(.regular.interactive(), in: RoundedRectangle(cornerRadius: 10))
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding()
        .foregroundColor(Color.santanderBlack)
        .font(.custom("Lato-Regular", size: 23))
    }
}
#Preview {
    SideMenuView()
}
