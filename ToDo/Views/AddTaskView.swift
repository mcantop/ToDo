//
//  AddTaskView.swift
//  ToDo
//
//  Created by Maciej on 11/09/2022.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmService: RealmService
    @Environment(\.dismiss) var dismiss
    @State private var title = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter your task here", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button {
                if title != "" {
                    realmService.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.77, saturation: 0.761, brightness: 0.514))
                    .cornerRadius(30)
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.534, saturation: 0.46, brightness: 0.913))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmService())
    }
}
