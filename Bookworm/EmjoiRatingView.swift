//
//  EmjoiRatingView.swift
//  Bookworm
//
//  Created by Putut Yusri Bahtiar on 23/02/23.
//

import SwiftUI

struct EmjoiRatingView: View {
    let rating: Int16
    
    var body: some View {
        switch rating {
        case 1:
            return Text("😔")
        case 2:
            return Text("☹️")
        case 3:
            return Text("🙂")
        case 4:
            return Text("😊")
        default:
            return Text("🤩")
        }
    }
}

struct EmjoiRatingView_Previews: PreviewProvider {
    static var previews: some View {
        EmjoiRatingView(rating: 3)
    }
}
