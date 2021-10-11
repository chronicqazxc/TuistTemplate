import ProjectDescription
import ProjectDescriptionHelpers

let wayneSwiftUITemplate = Template(
    description: "Wayne's SwiftUI template",
    attributes: [nameAttribute],
    items:
        xcasset(path: appPath) +
    [
        // Main App
        .file(
            path: appPath + "/Sources/\(nameAttribute)App.swift",
            templatePath: "App.stencil"
        ),
        .file(
            path: appPath + "/Sources/ContentView.swift",
            templatePath: "ContentView.stencil"
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
        ),
        .file(
            path: projectPath + "/Tuist/Config.swift",
            templatePath: templatePath("Config.stencil")
        )
    ]
)
