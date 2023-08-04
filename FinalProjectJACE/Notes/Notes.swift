//
//  Notes.swift
//  FinalProjectJACE
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct NoteItem: Codable, Hashable, Identifiable {
    var id: Int
    var text: String
    var date = Date()
}

struct NoteDetailView: View {
    let note: NoteItem
    
    var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM yyyy, h:mm a"
        return formatter
    }()
    
    var body: some View {
        VStack {
            Text(note.text)
                .font(.headline)
            Text(dateFormatter.string(from: note.date))
                .font(.subheadline)
        }
        .padding()
    }
}

struct Notes: View {
    @State var items: [NoteItem] = {
        guard let data = UserDefaults.standard.data(forKey: "notes") else { return [] }
        if let json = try? JSONDecoder().decode([NoteItem].self, from: data) {
            return json
        }
        return []
    }()
    
    @State var taskText: String = ""
    @State var showAlert = false
    @State var itemToDelete: NoteItem?
    
    var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM yyyy, h:mm a"
        return formatter
    }()
    
    var alert: Alert {
        Alert(title: Text("Hey!"),
              message: Text("Are you sure you want to delete this item?"),
              primaryButton: .destructive(Text("Delete"), action: deleteNote),
              secondaryButton: .cancel())
    }
    
    var inputView: some View {
        HStack {
            TextField("Write a note ...", text: $taskText)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                .clipped()
            Button(action: didTapAddTask, label: { Text("Add") }).padding(8)
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                inputView
                Divider()
                List {
                    ForEach(items) { item in
                        VStack(alignment: .leading, spacing: 8) {
                            Text(dateFormatter.string(from: item.date)).font(.headline)
                            Text(item.text).lineLimit(nil).multilineTextAlignment(.leading)
                        }
                        .padding(.vertical, 8)
//                        .background(Color.pink)
                        .cornerRadius(10)
                        .onLongPressGesture {
                            self.itemToDelete = item
                            self.showAlert = true
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color ("PrimaryColor"))
                .alert(isPresented: $showAlert, content: {
                    alert
                })
            }
            .navigationBarTitle("My Notes")
        }
        .background(Color.blue.edgesIgnoringSafeArea(.all))
    }
    
    func didTapAddTask() {
        let id = items.reduce(0) { max($0, $1.id) } + 1
        items.insert(NoteItem(id: id, text: taskText), at: 0)
        taskText = ""
        save()
    }
    
    func deleteNote() {
        guard let itemToDelete = itemToDelete else { return }
        items.removeAll { $0.id == itemToDelete.id }
        save()
    }
    
    func save() {
        guard let data = try? JSONEncoder().encode(items) else { return }
        UserDefaults.standard.set(data, forKey: "notes")
    }
}

struct Notes_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
