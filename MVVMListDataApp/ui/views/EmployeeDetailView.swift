//
//  EmployeeDetailView.swift
//  MVVMListData
//
//  Created by Muhammad Moin Raza Khan on 02/08/2024.
//

import SwiftUI
struct EmployeeDetailView: View {
    let employee: EmployeeData

    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 100, height: 100)
            Text(employee.empName)
                .font(.largeTitle)
            Text("Salary: \(employee.empSalary)")
            Text("Age: \(employee.empAge)")
        }
        .padding()
    }
}
