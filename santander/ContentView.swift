//
//  ContentView.swift
//  santander
//
//  Created by Elias Dinar on 19/5/26.
//

import SwiftUI
import SwiftData

enum Sections: CaseIterable {
    case start, patrimony, insurance, analysis
    
    var label: String {
        switch self {
        case .start: "Inicio"
        case .patrimony: "Patrimonio"
        case .insurance: "Seguros"
        case .analysis: "Análisis"
        }
    }
    
    var icon: String {
        switch self {
        case .start: "house.fill"
        case .patrimony: "eurosign.circle.fill"
        case .insurance: "beach.umbrella.fill"
        case .analysis: "chart.pie"
        }
    }
    
    var view: (some View)? {
        switch self {
        case .start: StartPage()
        default: nil
        }
    }
}

struct ContentView: View {

    var body: some View {
        TabView {
            ForEach(Sections.allCases, id: \.self) { section in
                Tab(section.label, systemImage: section.icon) {
                    if section.view == nil {
                        Text(String(format:"Pantalla de %@", section.label))
                    } else {
                        section.view
                    }
                }
            }
            Tab("Busqueda", systemImage: "magnifyingglass", role: .search) {
                EmptyView()
            }
        }.colorScheme(.light)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
