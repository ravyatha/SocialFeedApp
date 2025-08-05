import SwiftUI

struct PostCellFactory: View {
    let post: Post

    var body: some View {
        if let videoURL = post.videoURL {
            VideoPostCell(post: post, videoURL: videoURL)
        } else {
            PostCell(post: post)
        }
    }
}
