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
                
                VStack(alignment:.leading) {
                    Text("todo title")
                        .font(.headline)
                    
                    Text("Completed")
                        .font(.subheadline)
                }
                
                Spacer()
            }
            .padding()
        } label: {
            Label("My Todos", systemImage: "list.dash")
        }
        .widgetURL(URL(string:"myapp://todo/1"))
    }
}
