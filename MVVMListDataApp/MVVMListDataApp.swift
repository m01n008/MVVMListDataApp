//
//  MVVMListDataAppApp.swift
//  MVVMListDataApp
//
//  Created by Muhammad Moin Raza Khan on 01/08/2024.
//

import SwiftUI

@main
struct MVVMListDataAppApp: App {

    var body: some Scene {
        WindowGroup {
            let empViewModel = EmployeeViewModel()
            EmployeeView(viewModel: empViewModel)
            
        }
    }
}
