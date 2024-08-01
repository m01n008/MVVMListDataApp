//
//  ListViewController.swift
//  MVVMListDataApp
//
//  Created by Muhammad Moin Raza Khan on 01/08/2024.
//

import Foundation
import UIKit

class EmployeeListController: UIViewController{
    
    private var employeeViewModel: EmployeeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    private func updateUI(){
        self.employeeViewModel = EmployeeViewModel()
    }

}


