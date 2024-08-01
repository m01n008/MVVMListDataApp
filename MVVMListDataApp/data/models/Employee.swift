//
//  Employee.swift
//  MVVMListData
//
//  Created by Muhammad Moin Raza Khan on 01/08/2024.
//

import Foundation

struct Employees: Codable {
    let status: String
    let data: [EmployeeData]
    let message: String
}

struct EmployeeData: Codable {
    let id: Int
    let empName: String
    let empSalary: Int
    let empAge: Int
    let profileImage: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case empName = "employee_name"
        case empSalary = "employee_salary"
        case empAge = "employee_age"
        case profileImage = "profile_image"
    }
}
