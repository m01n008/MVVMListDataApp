//
//  EmployeeViewModel.swift
//  MVVMListData
//
//  Created by Muhammad Moin Raza Khan on 01/08/2024.
//

import Foundation

class EmployeeViewModel: ObservableObject {
    
    private var apiService: APIService!
    @Published private(set) var empData: Employees!
    
    
    //var bindEmpViewModeltoEmployeeUIController: () -> () = {}
    
    
    func fetchEmpData(){
        DispatchQueue.main.async{
            self.apiService = APIService()
            self.apiService.fetchEmployeeData { (empData) in
                DispatchQueue.main.async{
                    self.empData = empData
                    print(empData)
                }
            }
        }
    }
    
}
