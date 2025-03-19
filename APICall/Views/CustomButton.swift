//
//  CustomButton.swift
//  APICall
//
//  Created by Abdullah Hafiz on 17/09/1446 AH.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.bold)
                .padding(.horizontal, 100)
                .padding(.vertical, 12)
                .background(Color.blue.opacity(0.9))
                .foregroundColor(.white)
                .cornerRadius(12)
        }
    }
}

#Preview {
    CustomButton(title: "Hello", action: { })
}
