//
//  TaskRow.swift
//  ToDo
//
//  Created by Maciej on 11/09/2022.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Label(task, systemImage: completed ? "checkmark.circle" : "circle")
                .foregroundColor(.black)
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Do laundry", completed: true)
    }
}
