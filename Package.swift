// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HCKalmanFilter",
    platforms: [
        .iOS(.v9)  // Minimum iOS deployment target
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "HCKalmanFilter",
            targets: ["HCKalmanFilter"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // Here, 'Surge' is used for matrix and vector computations, a common requirement for implementing Kalman filters.
        .package(url: "https://github.com/Jounce/Surge.git", from: "2.3.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "HCKalmanFilter",
            dependencies: ["Surge"],
            path: "HCKalmanFilter/*"),  // Path to the source files
        .testTarget(
            name: "HCKalmanFilterTests",
            dependencies: ["HCKalmanFilter"],
            path: "HCKalmanFilter/Tests")  // Path to the test files
    ],
    swiftLanguageVersions: [.v5]  // This package is compatible with Swift 5.
)
