//
//  ContentView.swift
//  Word Play
//
//  Created by Dhanush Tipparaju on 10/5/22.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack{
                Text("Please enter the following words")
                HStack {
                    CustomTextField(placeholder: "Adjective", variable: $words.adj1)
                    CustomTextField(placeholder: "Adjective", variable: $words.adj2)
                    CustomTextField(placeholder: "Bird Name", variable: $words.bird)
                    
                }
                HStack {
                    CustomTextField(placeholder: "Room in house", variable: $words.roomInHouse)
                    CustomTextField(placeholder: "Past tense verb", variable: $words.verbPastTense)
                    
                    
                }
                HStack {
                    CustomTextField(placeholder: "Verb", variable: $words.verb)
                    CustomTextField(placeholder: "Name", variable: $words.name)
                    CustomTextField(placeholder: "Noun", variable: $words.noun1)
                    
                }
                HStack{
                    CustomTextField(placeholder: "Liquid", variable: $words.liquid)
                    CustomTextField(placeholder: "Ing Verb", variable: $words.ingVerb1)
                }
                HStack{
                    CustomTextField(placeholder: "Plural body part", variable: $words.bodyPartPlural)
                    CustomTextField(placeholder: "Plural noun", variable: $words.pluralNoun)
                }
                HStack {
                    CustomTextField(placeholder: "Ing Verb", variable: $words.ingVerb2)
                    CustomTextField(placeholder: "Noun", variable: $words.noun2)
                }
                Image("mad libs")
                    .resizable()
                    
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Words {
    var adj1 = ""
    var adj2 = ""
    var bird = ""
    var roomInHouse = ""
    
    var verbPastTense = ""
    var verb = ""
    var name = ""
    var noun1 = ""
    
    var liquid = ""
    var ingVerb1 = ""
    var bodyPartPlural = ""
    
    var pluralNoun = ""
    var ingVerb2 = ""
    var noun2 = ""
}

struct CustomTextField : View {
    let placeholder : String
    let variable : Binding<String>
    var body : some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
