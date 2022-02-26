//
//  WidgetCourse_Widget.swift
//  WidgetCourse Widget
//
//  Created by AlecNipp on 2/24/22.
//

import WidgetKit
import SwiftUI


@main
struct WidgetCourse_Widget: Widget {
    let kind: String = "WidgetCourse_Widget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WidgetView(entry: entry)
        }
        .supportedFamilies([.systemMedium, .systemLarge])
        .configurationDisplayName("My Todos")
        .description("View your latest todo(s).")
    }
}

struct WidgetCourse_Widget_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView(entry: SimpleEntry(date: Date(), todos: [.placeholder(0), .placeholder(1)]))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
