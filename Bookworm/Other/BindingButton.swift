//
//  BindingButton.swift
//  Bookworm
//
//  Created by Putut Yusri Bahtiar on 13/02/23.
//

import SwiftUI

struct PushButton: View {
    let title: String
    let header: String
    @Binding var isOn: Bool
    
    var onColors = [Color.green]
    var offColors = [Color(white: 0.5),Color(white: 0.6)]
    
    var body: some View {
        VStack {
            HStack {
                Text(header)
                
                
                Button(title) {
                    isOn.toggle()
                }
                .padding()
                .background(LinearGradient(colors: isOn ? onColors : offColors, startPoint: .top, endPoint: .bottom))
                .foregroundColor(.white)
                .clipShape(Capsule())
                .shadow(radius: isOn ? 0 : 5)
            }
        }
    }
}

struct BindingButton: View {
    @State private var rememberMe = false
    var body: some View {
        VStack {
            PushButton(title: "VPN Start", header: "", isOn: $rememberMe)
            Text(rememberMe ? "Tersambung" : "Terputus")
            Text(rememberMe ? "Internet private" : "Internet tidak Private")
        }
    }
}

struct BindingButton_Previews: PreviewProvider {
    static var previews: some View {
        BindingButton()
    }
}
