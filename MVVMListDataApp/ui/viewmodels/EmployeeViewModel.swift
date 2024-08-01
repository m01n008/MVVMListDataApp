//
//  EmployeeViewModel.swift
//  MVVMListData
//
//  Created by Muhammad Moin Raza Khan on 01/08/2024.
//

import Foundation

class EmployeeViewModel: ObservableObject {
    
    private var apiService: APIService!
    private(set) var empData: Employees! {
        didSet{
            self.bindEmpViewModeltoEmployeeUIController()
        }
    }
    
    
    var bindEmpViewModeltoEmployeeUIController: () -> () = {}
    
    
    func fetchEmpData(){
        self.apiService = APIService()
        self.apiService.fetchEmployeeData { (empData) in
            self.empData = empData
            print(empData)
        }
        
    }
    
}
