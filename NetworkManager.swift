//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Suhas Pathak on 13/12/23.
//

import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    private var cache = NSCache<NSString, UIImage>()
    
    static let baseURl = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerUrl = baseURl + "appetizers"
    private init() {

    }
    func getAppetilzers(completed:@escaping(Result<[Appetizer],APError>) -> Void) {
        
        guard let url = URL(string: appetizerUrl) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            if let _ = error {
                completed(.failure(.invalidURL))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                
                let decodedResponse =  try decoder.decode(AppetizerResponse.self, from: data)

                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
    
    
    func downloadImage(fromURLString urlString: String, completed: @escaping(UIImage?)-> Void) {
        
        let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }
        
        guard let url = URL(string: urlString) else {
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { [self] data, response, error in
            
            guard let data = data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }
            
            cache.setObject(image, forKey: cacheKey)
            
            completed(image)
            
        }
        task.resume()
    }
}
