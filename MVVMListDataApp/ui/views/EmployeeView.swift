import SwiftUI

struct EmployeeView: View {
    @ObservedObject var viewModel: EmployeeViewModel

    var body: some View {
        NavigationView {
            List {
                if let empData = viewModel.empData?.data {
                    ForEach(empData) { employee in
                        NavigationLink(destination: EmployeeDetailView(employee: employee)) {
                            HStack {
                                Image(systemName: "person.crop.circle")
                                VStack(alignment: .leading) {
                                    Text(employee.empName)
                                        .font(.headline)
                                    Text("Salary: \(employee.empSalary)")
                                    Text("Age: \(employee.empAge)")
                                }
                            }
                        }
                    }
                } else {
                    Text("Loading data...")
                }
            }
            .navigationTitle("Employees")
            .onAppear {
                viewModel.fetchEmpData()
            }
        }
    }
}

#Preview {
    EmployeeView(viewModel: EmployeeViewModel())
}

