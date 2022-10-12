//
//  StoryView.swift
//  Word Play
//
//  Created by Dhanush Tipparaju on 10/5/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
            .font(.title2)
            .fontWeight(.semibold)
    }
    func writeStory()-> String {
        return "It was a \(words.adj1), cold November day. " + "I woke up to the \(words.adj2) smell of \(words.bird) roasting in the \(words.roomInHouse) downstairs. " + "I \(words.verbPastTense) down the stairs to see if I could help \(words.verb) for dinner. " + "My mom said to check if \(words.name) needs a fresh \(words.noun1). " + "Then I carried a tray of glasses full of \(words.liquid) into the \(words.ingVerb1) room. " + "I couldn't believe my \(words.bodyPartPlural)!" + " There were \(words.pluralNoun) \(words.ingVerb2) on the \(words.noun2)!"
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
