//
//  CustomTF.swift
//  APICall
//
//  Created by Abdullah Hafiz on 17/09/1446 AH.
//

import SwiftUI

struct CustomTF: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Color.white.opacity(0.8))
            .cornerRadius(8)
            .shadow(radius: 2)
            .frame(maxWidth: 300)
            .foregroundColor(.black)
    }
}




#Preview {
    @State var text: String = ""
    CustomTF(placeholder: "Test", text: $text)
}
