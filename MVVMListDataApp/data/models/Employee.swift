//
//  Employee.swift
//  MVVMListData
//
//  Created by Muhammad Moin Raza Khan on 01/08/2024.
//

import Foundation

struct Employees: Decodable {
    let status: String
    let data: [EmployeeData]
}

struct EmployeeData: Decodable {
    let id, employeeName, employeeSalary, employeeAge: String
    let profileImage: String
    
    enum codingKeys: String, CodingKey {
        case id
        case empName = "employee_name"
        case empSalary = "employee_salary"
        case empAge = "employee_age"
        case empProfileImg = "profile_image"
    }
}
