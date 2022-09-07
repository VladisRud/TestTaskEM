//
//  ApiClass.swift
//  TestTaskEM
//
//  Created by Влад Руденко on 03.09.2022.
//

import UIKit

class ApiClass {
    
    var pictureURL = ""
    
    func downloadHomeScreenApi(url: String, completion: @escaping () -> Void) {
        
        let session = URLSession(configuration: .default)
        
        guard let apiURL = URL(string: url) else {
            fatalError("This is not URL")
        }
        let task = session.dataTask(with: apiURL) { data, response, error in
            guard let data = data else {
                print(error!)
                return
            }
            do {
                let json = try JSONDecoder().decode(HomeScreen.self, from: data)
                DispatchQueue.main.async {
                    self.pictureURL = json.homeStore[0].picture
                }
                completion()
            } catch {
                print(error.localizedDescription)
            }
            
        }
        task.resume()
    }
    
}
