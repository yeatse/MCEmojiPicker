// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "MCEmojiPicker",
    defaultLocalization: "en",
    platforms: [.iOS(.v17)],
    products: [
        .executable(name: "MCEmojiPickerJSON", targets: ["MCEmojiPickerJSON"]),
        .library(name: "MCEmojiPicker", targets: ["MCEmojiPicker"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MCEmojiPicker",
            dependencies: [],
            path: "Sources/MCEmojiPicker",
            resources: [
                .copy("Resources/EmojiDefinitions/travellingAndPlaces.json"),
                .copy("Resources/EmojiDefinitions/symbols.json"),
                .copy("Resources/EmojiDefinitions/items.json"),
                .copy("Resources/EmojiDefinitions/foodAndDrinks.json"),
                .copy("Resources/EmojiDefinitions/flags.json"),
                .copy("Resources/EmojiDefinitions/emotionsAndPeople.json"),
                .copy("Resources/EmojiDefinitions/animalsAndNature.json"),
                .copy("Resources/EmojiDefinitions/activities.json"),
            ]
        ),
        .executableTarget(name: "MCEmojiPickerJSON", dependencies: ["MCEmojiPicker"])
    ],
    swiftLanguageModes: [.v6]
)
