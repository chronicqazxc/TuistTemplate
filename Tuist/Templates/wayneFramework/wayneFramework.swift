import ProjectDescription

private let nameAttribute: Template.Attribute = .required("name")
private let platformAttribute: Template.Attribute = .optional("platform", default: "iOS")
private let kitFrameworkPath = "Targets/\(nameAttribute)"
private let projectPath = "."

private func templatePath(_ path: String) -> Path {
    "../\(path)"
}

let wayneFrameworkTemplate = Template(
    description: "Wayne's framework template",
    attributes: [
        nameAttribute,
        platformAttribute,
    ],
    items: [
        // Template Files
        .string(
            path: kitFrameworkPath + "/Sources/DeleteMe.swift",
            contents: #"delete me"#
        ),
        .string(
            path: kitFrameworkPath + "/Resources/DeleteMe",
            contents: "delete me"
        ),
        .file(
            path: kitFrameworkPath + "/Tests/\(nameAttribute)Tests.swift",
            templatePath: templatePath("AppTests.stencil")
        ),
        // Configuration Files
        .file(
            path: "./ConfigurationFiles/Debug.xcconfig",
            templatePath: templatePath("Debug.stencil")
        ),
        .file(
            path: "./ConfigurationFiles/Release.xcconfig",
            templatePath: templatePath("Release.stencil")
        )
    ]
)
