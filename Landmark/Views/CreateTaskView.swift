//
//  CreateTaskView.swift
//  Landmark
//
//  Created by Denny Arfansyah on 12/09/23.
//

import SwiftUI

struct CreateTaskView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var deadlineAt: Date = Date()
    @FocusState private var titleIsFocused: Bool
    
    let typeTask = ["Aljabar", "Algorithm", "Mathematic Discrit", "Other"]
    @State private var selectedTask = "Aljabar"
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Title", text: $title)
                            .focused($titleIsFocused)
                        
                        Picker("Type Task", selection: $selectedTask) {
                            ForEach(typeTask, id: \.self) { type in
                                Text(type)
                            }
                            .pickerStyle(.menu)
                        }
                        TextField("Description", text: $description, axis: .vertical)
                            .focused($titleIsFocused)
                    }
                    
                    Section {
                        DatePicker("Deadline", selection: $deadlineAt)
                        Button {
                            save()
                        } label: {
                            Text("Save")
                                .foregroundColor(.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                        }
                    }
                }
            }
            .navigationTitle("Create Task")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        titleIsFocused = false
                    }
                }
            }
        }
    }
    
    func save() {
        let id = (ModelData().tasks.last?.id ?? 0) + 1
        let newTask = Task(id: id, name: title, description: description,
                           createAt: getStandardDate(newDate: Date()),
                           deadlineAt: getStandardDate(newDate: deadlineAt),
                           doneAt: nil, isActive: true, category: selectedTask)
        modelData.tasks.append(newTask)
    }
}

struct CreateTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTaskView().environmentObject(ModelData())
    }
}
