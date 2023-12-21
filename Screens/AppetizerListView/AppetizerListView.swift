//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Suhas Pathak on 28/09/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizer")
                .disabled(viewModel.isShowDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            
            .blur(radius: viewModel.isShowDetail ? 20 : 0)
            if let selectedAppetizer = viewModel.selectedAppetizer {
                if viewModel.isShowDetail {
                    AppetizerDetailView(appetizer: selectedAppetizer, isShowDetail: $viewModel.isShowDetail)
                }
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
    
   
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
