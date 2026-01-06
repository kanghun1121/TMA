# Feature Template

이 템플릿은 새로운 Feature 모듈을 생성합니다.

## 사용 방법

```bash
tuist scaffold feature --name FeatureName
```

예시:
```bash
tuist scaffold feature --name Home
```

## 생성되는 구조

```
Projects/Feature/FeatureName/
├── Project.swift
├── Sources/
│   └── FeatureName.swift
├── Interfaces/
│   └── FeatureNameInterface.swift
├── Testing/
│   └── FeatureNameTesting.swift
├── Tests/
│   └── FeatureNameTests.swift
└── Example/
    └── Sources/
        ├── App.swift
        └── ContentView.swift
```

## 추가 작업 필요

템플릿 실행 후 다음 작업을 수행해야 합니다:

1. **Modules.swift에 enum 케이스 추가**
   - `Tuist/ProjectDescriptionHelpers/Modules.swift` 파일을 열고
   - `enum Feature`에 새로운 케이스를 추가합니다 (첫 글자는 소문자, rawValue는 대문자):
   ```swift
   case home = "Home"  // 예: tuist scaffold feature --name Home 실행 시
   ```

2. **App 프로젝트에 의존성 추가 (선택사항)**
   - `Projects/App/Project.swift` 파일을 열고
   - dependencies 배열에 추가합니다:
   ```swift
   .project(target: "FeatureName", path: "../Feature/FeatureName")
   ```

3. **프로젝트 생성**
   ```bash
   tuist generate
   ```

