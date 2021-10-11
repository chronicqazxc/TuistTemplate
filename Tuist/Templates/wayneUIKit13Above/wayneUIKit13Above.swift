import ProjectDescription
import ProjectDescriptionHelpers

let wayneUIKit13AboveTemplate = Template(
    description: "Wayne's UIKit template for iOS 13 above",
    attributes: [nameAttribute],
    items:
        xcasset(path: appPath) +
    [
        // Main App
        .file(
            path: appPath + "/Sources/AppDelegate.swift",
            templatePath: "AppDelegate.stencil"
        ),
        .file(
            path: appPath + "/Sources/SceneDelegate.swift",
            templatePath: "SceneDelegate.stencil"
        ),
        .file(
            path: appPath + "/Sources/ViewController.swift",
            templatePath: templatePath("ViewController.stencil")
        ),
        .file(
            path: appPath + "/Tests/\(nameAttribute)Tests.swift",
            templatePath: templatePath("AppTests.stencil")
        ),
        .file(
            path: appPath + "/Info.plist",
            templatePath: "InfoPlist.stencil"
        ),
        // Configuration Files
        .file(
            path: ".gitignore",
            templatePath: templatePath("Gitignore.stencil")
        ),
        .file(
            path: appPath + "/ConfigurationFiles/Debug.xcconfig",
            templatePath: templatePath("Debug.stencil")
        ),
        .file(
            path: appPath + "/ConfigurationFiles/Release.xcconfig",
            templatePath: templatePath("Release.stencil")
        ),
        // Tuist
        .file(
            path: projectPath + "/Project.swift",
            templatePath: "AppProject.stencil"
        ),
        .file(
            path: projectPath + "/Tuist/Dependencies.swift",
            templatePath: templatePath("Dependencies.stencil")
        )
    ]
)
