import Foundation

struct Post: Identifiable, Decodable, Equatable {
    let id: Int
    let username: String
    let content: String
    let imageURL: String?
    let videoURL: String?
    let timestamp: Date 
}
