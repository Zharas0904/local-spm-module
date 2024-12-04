import ProjectDescription

let project = Project(
    name: "SomeProjectTuist",
	packages: [
		// External
		.package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),

		// Flow
		.local(path: .relativeToRoot("Modules/Flows/AuthFlow")),

		// Common
		.local(path: .relativeToRoot("Modules/Common/CommonUI")),

		// Shared
		.local(path: .relativeToRoot("Modules/Shared/AnalyticsKit"))
	],
    targets: [
        .target(
            name: "SomeProjectTuist",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Tuist",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["SomeProjectTuist/Sources/**"],
            resources: ["SomeProjectTuist/Resources/**"],
            dependencies: [
				// External
				.package(product: "SnapKit"),

				// Feature flow
				.package(product: "MyLibrary"),

				// Common
				.package(product: "CommonUI"),

				// Shared
				.package(product: "AnalyticsKit"),
			]
        )
    ]
)
