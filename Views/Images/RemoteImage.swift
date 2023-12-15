//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Suhas Pathak on 15/12/23.
//

import SwiftUI

final class ImageLoading: ObservableObject {
    @Published var image: Image? = nil
    
    func load(fromURLString urlString: String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiimage in
            
            guard let uiimage = uiimage else {
                return
            }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiimage)
            }
            
            
        }
    }
}


struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}


struct AppetizerRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoading()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear {
                imageLoader.load(fromURLString: urlString)
            }
    }
}
