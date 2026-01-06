import ProjectDescription

let featureTemplate = Template(
    // 템플릿 설명
    description: "Feature module template",
    // 템플릿 사용 시 필요한 변수 정의 (name은 필수 입력값)
    attributes: [
        .required("name")  // Feature 이름 (예: "Book", "Home" 등)
    ],
    // 생성할 파일 목록
    items: [
        // 프로젝트 설정 파일
        .file(
            path: "Projects/Feature/{{ name }}/Project.swift",
            templatePath: "Project.swift.stencil"
        ),
        // 메인 Feature 구현 파일
        .file(
            path: "Projects/Feature/{{ name }}/Sources/{{ name }}.swift",
            templatePath: "Sources/Feature.swift.stencil"
        ),
        // 외부 공개 API 인터페이스 파일
        .file(
            path: "Projects/Feature/{{ name }}/Interfaces/{{ name }}Interface.swift",
            templatePath: "Interfaces/FeatureInterface.swift.stencil"
        ),
        // 테스트용 Mock 및 헬퍼 파일
        .file(
            path: "Projects/Feature/{{ name }}/Testing/{{ name }}Testing.swift",
            templatePath: "Testing/FeatureTesting.swift.stencil"
        ),
        // 단위 테스트 파일
        .file(
            path: "Projects/Feature/{{ name }}/Tests/{{ name }}Tests.swift",
            templatePath: "Tests/FeatureTests.swift.stencil"
        ),
        // 예제 앱의 메인 파일
        .file(
            path: "Projects/Feature/{{ name }}/Example/Sources/App.swift",
            templatePath: "Example/Sources/App.swift.stencil"
        ),
        // 예제 앱의 뷰 파일
        .file(
            path: "Projects/Feature/{{ name }}/Example/Sources/ContentView.swift",
            templatePath: "Example/Sources/ContentView.swift.stencil"
        )
    ]
)

