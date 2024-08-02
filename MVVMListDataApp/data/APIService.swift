//
//  APIService.swift
//  MVVMListData
//
//  Created by Muhammad Moin Raza Khan on 01/08/2024.
//

import Foundation

class APIService: NSObject {
    
    private let sourceURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    
    func fetchEmployeeData(completion: @escaping (Employees?) -> ()){
        let task = URLSession.shared.dataTask(with: sourceURL) {(data, response, error) in
            guard error == nil else {
                print("Error fetching data:  \(error?.localizedDescription ?? "unable to fetch data")")
                completion(nil)
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                print("Invalid response returned from server")
                completion(nil)
                return
            }
            
            guard let data = data else{
                print("No data received")
                completion(nil)
                return
            }
            
           do {
            let jsonDecoder = JSONDecoder()
               let empData = try! jsonDecoder.decode(Employees.self, from: data)
               DispatchQueue.main.async {
                   completion(empData)
               }
              
            }
            catch{
                print("Error decoding JSON: \(error.localizedDescription)")
                completion(nil)
            }
        }
        task.resume()
        
        
    }
}
