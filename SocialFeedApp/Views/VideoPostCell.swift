import SwiftUI
import AVKit

struct VideoPostCell: View {
    let post: Post
    let videoURL: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(post.username).font(.headline)
            Text(post.content).font(.body)
            if let url = URL(string: videoURL) {
                VideoPlayer(player: AVPlayer(url: url))
                    .frame(height: 200)
                    .cornerRadius(8)
            }
            Text(post.timestamp, style: .time)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}
