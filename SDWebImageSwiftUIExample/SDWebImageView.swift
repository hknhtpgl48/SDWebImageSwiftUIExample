//
//  SDWebImageView.swift
//  SDWebImageSwiftUIExample
//
//  Created by Hakan Hatipoğlu on 12.03.2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct SDWebImageView: View {
    @State var url: String
    var body: some View {
        WebImage(url: URL(string: url)) { image in
                image.resizable() // Control layout like SwiftUI.AsyncImage, you must use this modifier or the view will use the image bitmap size
            } placeholder: {
                Rectangle().foregroundColor(.gray.opacity(0.5))
            }
            // Supports options and context, like `.delayPlaceholder` to show placeholder only when error
            .onSuccess { image, data, cacheType in
                // Success
                // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
                print("Great Success!!!")
            }
            .onFailure { error in
                print("ERROR => \(error.localizedDescription)")
            }
            .indicator(.activity) // Activity Indicator
            .transition(.fade(duration: 0.5)) // Fade Transition with duration
            .scaledToFit()
//            .frame(width: 300, height: 300, alignment: .center)
            .cornerRadius(8)
            .shadow(radius: 10)
    }
}

#Preview {
    SDWebImageView(url: "")
}
