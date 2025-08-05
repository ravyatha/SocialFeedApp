import SwiftUI

struct FeedView: View {
    @StateObject private var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.posts) { post in
                    PostCellFactory(post: post)
                        .onAppear {
                            if post == viewModel.posts.last {
                                viewModel.loadMore()
                            }
                        }
                }
                if viewModel.isLoading {
                    ProgressView()
                        .frame(maxWidth: .infinity)
                }
            }
            .navigationTitle("Feed")
            .onAppear {
                viewModel.loadInitial()
            }
            .refreshable {
                viewModel.loadInitial()
            }
        }
    }
}
