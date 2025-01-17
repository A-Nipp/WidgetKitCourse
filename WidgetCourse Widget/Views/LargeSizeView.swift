//
//  LargeSizeView.swift
//  WidgetCourse WidgetExtension
//
//  Created by AlecNipp on 2/24/22.
//

import SwiftUI
import WidgetKit

struct LargeSizeView: View {
    var entry: SimpleEntry
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                Text("My todos")
                
                Text(Date.now, format: .dateTime)
                
                Spacer()
            }
            .padding(8)
            .background(.blue)
            .foregroundColor(.white)
            .clipped() // clips everything into a single view so that the shadow does not apply to each individual element of the stack
            .shadow(radius: 5)
            
            ForEach(entry.todos) { todo in
                Link(destination: URL(string:"myapp://todo/\(todo.id)")!) {
                    HStack {
                        Circle()
                            .stroke(lineWidth: 2)
                            .frame(width: 30, height: 30)
                            .overlay {
                                if todo.completed {
                                    Image(systemName: "checkmark")
                                }
                            }
                        Text(todo.title)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                }
                Divider()
            }
            
            Spacer()
        }
    }
}

