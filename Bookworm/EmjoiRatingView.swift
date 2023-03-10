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
            return Text("đ")
        case 2:
            return Text("âšī¸")
        case 3:
            return Text("đ")
        case 4:
            return Text("đ")
        default:
            return Text("đ¤Š")
        }
    }
}

struct EmjoiRatingView_Previews: PreviewProvider {
    static var previews: some View {
        EmjoiRatingView(rating: 3)
    }
}
