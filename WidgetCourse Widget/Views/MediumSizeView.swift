//
//  MediumSizeView.swift
//  WidgetCourse WidgetExtension
//
//  Created by AlecNipp on 2/24/22.
//

import SwiftUI
import WidgetKit

struct MediumSizeView: View {
    var entry: SimpleEntry
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.secondary)
                
                Divider()
                
                if let todo = entry.todos.first {
                    VStack(alignment:.leading) {
                        Text(todo.title)
                            .font(.headline)
                        
                        Text(todo.completed ? "Completed" : "Open")
                            .font(.subheadline)
                    }
                }
                
                Spacer()
            }
            .padding()
        } label: {
            Label("My Todos", systemImage: "list.dash")
        }
        .widgetURL(URL(string:"myapp://todo/\(entry.todos.first?.id ?? 0)"))
    }
}
