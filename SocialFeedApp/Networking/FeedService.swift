import Foundation

class FeedService {
    func fetchPosts(page: Int, completion: @escaping ([Post]) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            guard let url = Bundle.main.url(forResource: "MockData", withExtension: "json"),
                  let data = try? Data(contentsOf: url) else {
                completion([])
                return
            }

            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601

            guard let posts = try? decoder.decode([Post].self, from: data) else {
                print("Failed to decode posts")
                completion([])
                return
            }
            
            let paginated = Array(posts.prefix(page * 5))
            completion(paginated)
        }
    }
}
