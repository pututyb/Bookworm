//
//  TexteEditor -multiline.swift
//  Bookworm
//
//  Created by Putut Yusri Bahtiar on 15/02/23.
//

import SwiftUI

struct TexteEditor__multiline: View {
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationView {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

struct TexteEditor__multiline_Previews: PreviewProvider {
    static var previews: some View {
        TexteEditor__multiline()
    }
}
