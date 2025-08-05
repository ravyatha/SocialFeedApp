import Foundation
import Combine

class FeedViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var isLoading = false
    private var page = 1
    private var cancellables = Set<AnyCancellable>()
    
    private let service = FeedService()
    
    func loadInitial() {
        page = 1
        fetchPosts()
    }
    
    func loadMore() {
        page += 1
        fetchPosts()
    }
    
    func fetchPosts() {
        isLoading = true
        service.fetchPosts(page: page) { [weak self] newPosts in
            DispatchQueue.main.async {
                if self?.page == 1 {
                    self?.posts = newPosts
                } else {
                    self?.posts.append(contentsOf: newPosts)
                }
                self?.isLoading = false
            }
        }
    }
}
