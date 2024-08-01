//
//  APIService.swift
//  MVVMListData
//
//  Created by Muhammad Moin Raza Khan on 01/08/2024.
//

import Foundation

class APIService: NSObject {
    
    private let sourceURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    
    func fetchEmployeeData(completion: @escaping (Employees) -> ()){
        URLSession.shared.dataTask(with: sourceURL) {(data, response, URL) in
           if let data = data {
                let jsonDecoder = JSONDecoder()
               let empData = try! jsonDecoder.decode(Employees.self, from: data)
               completion(empData)
            }
        }.resume()
        
    }
}
