
Build a Twitter-like social media feed application that demonstrates your understanding of MVVM architecture, UI modularity, and state management without using third-party architecture libraries.

### Requirements:
- Clear separation between Model, View, and ViewModel
- Implement data binding without third-party libraries
- ViewModels should be fully testable without UI dependencies
- Use Combine for reactive programming
- Display posts with text, images, and user information
- Implement pull-to-refresh and infinite scrolling
- Create reusable feed item components
- Support multiple feed item types (text, image, video preview)
- Implement a plugin system for custom feed items
- Dynamic height calculation for variable content


## Features Implemented

- MVVM architecture with clear separation of concerns
- Reactive data handling using `Combine`
- Display of posts with text, images, and videos
- Pull-to-refresh and infinite scrolling
- Plugin-style rendering using `PostCellFactory`
- Modular and dynamic post item views
- Dynamic height calculation based on content


## Folder Structure

```
SocialFeedApp/
├── Models/
│   └── Post.swift
├── ViewModels/
│   └── FeedViewModel.swift
├── Views/
│   ├── FeedView.swift
│   ├── PostCell.swift
│   ├── VideoPostCell.swift
│   └── PostCellFactory.swift
├── Networking/
│   └── FeedService.swift
├── Resources/
│   └── MockData.json
├── SocialFeedAppApp.swift
└── README.md
```

##  How to Run (in Xcode via MacinCloud)

This project was written using **VS Code on Windows** and then fully tested and run in **Xcode (via MacinCloud)**.

To run the app:

1. Open **Xcode** on macOS (via MacinCloud).
2. Create a new **SwiftUI App** project named `SocialFeedApp`.
3. Copy all the files and folders into the project navigator.
4. Make sure that `FeedView()` is set as the main view in `SocialFeedAppApp.swift`.
5. Add `MockData.json` to **Copy Bundle Resources** in Build Phases.
6. Select an iOS Simulator (example: iPhone 14) and click **Run**.


## Tools & Platform

- Code written: **VS Code(Windows)**
- Tested in: **Xcode 15+ on MacinCloud**
- Target Platform: **ios 17+**
- Language & Frameworks: **Swift 5.10 & SwiftUI, Combine**


