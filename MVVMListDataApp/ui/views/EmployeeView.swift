import SwiftUI

struct EmployeeView: View {
    @ObservedObject var viewModel: EmployeeViewModel

    var body: some View {
        VStack {
        }
        .onAppear {
            viewModel.fetchEmpData()
        }
    }
}

