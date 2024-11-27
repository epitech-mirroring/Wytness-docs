# Comparative Study

Flutter is one of the most powerful framework in the world in order to develop mobile apps, through this comparative study we are gonna compare the performance between Flutter and React Native whitch is its main opponent.

## Performance

### Flutter
Native Performance: Flutter uses Dart, which is compiled to native ARM or x86 code using AOT (Ahead-of-Time) compilation. This reduces the overhead of a bridge between the UI and native code, providing near-native performance.
UI Rendering: It uses its own rendering engine (Skia) to draw components, bypassing platform-specific UI components. This results in consistent performance across platforms.
FPS: Smooth animations at 60/120 FPS are achievable due to direct access to GPU.


### React Native
JavaScript Bridge: React Native uses a JavaScript bridge to communicate with native modules, which can introduce latency.
Native Components: Relies on native UI components, which can lead to better performance for simple apps but slower rendering for complex UIs.
Optimization Needed: Heavy applications require manual performance tuning (e.g., using Hermes, optimizing re-renders).


comparative of performance when scroll through a list view (frame, heap...)
| Android                                                                 | iOS                                                                    |
|------------------------------------------------------------------------|------------------------------------------------------------------------|
| <img src="perf_graph_android.png" style="width:450px"> | <img src="perf_graph_ios.png" style="width:357px"> |

comparative of performance when add animation (usefull when we will create node to link action-reaction boxes together as Github action)
| Android                                                                 | iOS                                                                    |
|------------------------------------------------------------------------|------------------------------------------------------------------------|
| <img src="perf_animation_android.png" style="width:450px"> | <img src="perf_animation_ios.png" style="width:406px"> |

---

After the compilation of the default app of each framework, Flutter look way more lighweight that the react native app and the time to build it is way more fast for the flutter side.

<img src="storage_default_app.png" style="width: 40%">

## Compilation

### Flutter
Compilation Process:
AOT (Ahead-of-Time) for production builds ensures fast startup and optimized performance.
JIT (Just-in-Time) for development builds provides hot-reload for faster iteration.
Cross-Platform: The Dart compiler outputs native machine code for iOS, Android, Windows, macOS, and Linux.

### React Native
JavaScript: React Native applications are written in JavaScript, which is interpreted at runtime (unless using Hermes, a JS engine that supports AOT compilation).
Bundling: Uses Metro bundler to package the JavaScript code.

| React                                                                 | Flutter                                                                    |
|------------------------------------------------------------------------|------------------------------------------------------------------------|
| <img src="compilation_react.png" style="width:450px"> | <img src="compilation_flutter.png" style="width:477px"> |


## UI/UX

### Flutter
Custom Widgets: Flutter provides an extensive collection of widgets, allowing developers to design custom UIs.
Consistency: The UI looks identical across platforms since it's rendered using Flutter's engine.
Theming: Built-in Material Design and Cupertino widgets for Android and iOS styles, respectively.

### React Native
Native Look and Feel: Uses platform-native UI components, giving apps a native feel but sometimes resulting in inconsistencies across devices.
Third-party Libraries: Relies heavily on third-party libraries for certain UI/UX features.

## Development Speed

### Flutter
Hot Reload: Provides near-instant feedback, boosting developer productivity.
Single Codebase: Truly cross-platform with a single codebase for Android, iOS, web, and desktop.
Dart Language: Dart’s syntax is easy to learn but requires onboarding time for developers not familiar with it.
### React Native
Hot Reload/Live Reload: Offers similar features but can be slower due to the JavaScript bridge.
JavaScript Ecosystem: Leverages JavaScript, a widely known language, which speeds up onboarding for developers.
Dependency on Libraries: Heavy reliance on third-party libraries can speed up development but may also lead to versioning issues.

## Community and Ecosystem

### Flutter
Growing Community: Backed by Google, with strong adoption in enterprise and startups.
Plugins: Official and community plugins are available but less diverse than React Native.
Documentation: Well-maintained and beginner-friendly.

### React Native
Mature Ecosystem: A larger and older community than Flutter, leading to a more extensive library of third-party modules.
Facebook Backing: React Native is backed by Facebook, with many large-scale apps using it.
Open Source Contributions: Active contributions from developers worldwide.
React native is no longer used by facebook for their social network whitch could get tend to told that the framework is less a priority for the flutter

The communauty seem to be bigger on flutter with more stars 10 time more issues open to contibute to the repository.

| React                                                                 | Flutter                                                                    |
|------------------------------------------------------------------------|------------------------------------------------------------------------|
| <img src="react_native.png" style="width:450px"> | <img src="flutter.png" style="width:477px"> |


## Cross-Platform Capability

### Flutter
Supports Android, iOS, Web, Windows, macOS, and Linux natively.
Stable performance across all platforms.
### React Native
Primarily focused on Android and iOS.
Community-driven efforts for web and desktop support (e.g., React Native for Windows).
