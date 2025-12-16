# SCUBE - Control & Monitoring System 🌐

A modern Flutter application for industrial control and monitoring systems, specifically designed for SCM (Supply Chain Management) operations with real-time data visualization, energy tracking, and revenue analysis.

## 📱 Screenshots

<table>
  <tr>
    <td><img src="screenshots/s01.jpg" width="200"/></td>
    <td><img src="screenshots/s02.jpg" width="200"/></td>
    <td><img src="screenshots/s03.jpg" width="200"/></td>
    <td><img src="screenshots/s04.jpg" width="200"/></td>
  </tr>
  <tr>
    <td align="center">Splash Screen</td>
    <td align="center">Login Screen</td>
    <td align="center">SCM Dashboard</td>
    <td align="center">Module Options</td>
  </tr>
  <tr>
    <td><img src="screenshots/s05.jpg" width="200"/></td>
    <td><img src="screenshots/s06.jpg" width="200"/></td>
    <td><img src="screenshots/s07.jpg" width="200"/></td>
    <td><img src="screenshots/s08.jpg" width="200"/></td>
  </tr>
  <tr>
    <td align="center">Analysis Pro</td>
    <td align="center">Data View</td>
    <td align="center">Custom Date Filter</td>
    <td align="center">Energy Charts</td>
  </tr>
  <tr>
    <td><img src="screenshots/s09.jpg" width="200"/></td>
    <td><img src="screenshots/s10.jpg" width="200"/></td>
  </tr>
  <tr>
    <td align="center">Revenue View</td>
    <td align="center">Cost Breakdown</td>
  </tr>
</table>

## ✨ Features

- 🔐 **Secure Authentication** - User login with password visibility toggle
- 📊 **Real-time Monitoring** - Live electricity data tracking with circular gauges
- ⚡ **Power Analytics** - Detailed energy consumption breakdown by source and load
- 📈 **Data Visualization** - Interactive charts for energy and revenue analysis
- 📅 **Date Range Selection** - Custom date filtering for historical data
- 💰 **Revenue Tracking** - Comprehensive cost and revenue analysis
- 🏭 **Multiple Modules** - Analysis Pro, Plant Summary, Generator Management, Natural Gas, Water Process
- 📱 **Responsive Design** - Optimized for different screen sizes
- 🎨 **Modern UI** - Clean and intuitive user interface with smooth animations

## 🏗️ Architecture

This project follows **Clean Architecture** principles with a clear separation of concerns:

```
lib/
├── app/
│   ├── app_dependencies.dart      # Dependency Injection Setup
│   ├── provider_list.dart         # State Management Providers
│   └── exports.dart               # Central Export File
├── features/
│   └── scm/
│       ├── data/                  # Data Layer
│       │   ├── datasources/       # API & Local Data Sources
│       │   ├── models/            # Data Models
│       │   └── repositories/      # Repository Implementations
│       ├── domain/                # Domain Layer
│       │   ├── entities/          # Business Entities
│       │   ├── repositories/      # Repository Interfaces
│       │   └── usecases/          # Business Logic
│       └── presentation/          # Presentation Layer
│           ├── screens/           # UI Screens
│           ├── widgets/           # Reusable Widgets
│           └── providers/         # State Management
└── core/                          # Shared Resources
    ├── constants/                 # App Constants
    ├── utils/                     # Utility Functions
    └── theme/                     # App Theme
```

### Architecture Layers

- **Data Layer**: Handles data operations (API calls, local storage, data models)
- **Domain Layer**: Contains business logic and entities (use cases, repository contracts)
- **Presentation Layer**: UI components and state management (screens, widgets, providers)

## 🎯 State Management

This app uses **Provider** for state management, offering:

- Simple and scalable state management solution
- Efficient widget rebuilding
- Easy dependency injection
- Clear separation between business logic and UI

## 📦 Key Packages Used

### Core Dependencies

| Package     | Version  | Purpose                                  |
| ----------- | -------- | ---------------------------------------- |
| `provider`  | ^6.1.5+1 | State management solution                |
| `go_router` | ^17.0.0  | Declarative routing and navigation       |
| `get_it`    | ^9.2.0   | Service locator for dependency injection |
| `logger`    | ^2.6.2   | Elegant logging for debugging            |

### UI & Visualization

| Package                     | Version  | Purpose                                |
| --------------------------- | -------- | -------------------------------------- |
| `syncfusion_flutter_gauges` | ^32.1.19 | Beautiful circular progress indicators |
| `flutter_screenutil`        | ^5.9.3   | Responsive UI across screen sizes      |
| `flutter_svg`               | ^2.2.3   | SVG rendering support                  |
| `shimmer`                   | ^3.0.0   | Skeleton loading effects               |
| `flutter_spinkit`           | ^5.2.2   | Animated loading indicators            |
| `cached_network_image`      | ^3.4.1   | Optimized image loading & caching      |

## 🚀 Getting Started

### Prerequisites

- Flutter SDK: `^3.9.2`
- Dart SDK: `^3.9.2`
- Android Studio / VS Code
- Android/iOS device or emulator

### Installation

1. **Clone the repository**

```bash
git clone https://github.com/yourusername/scube_task_app.git
cd scube_task_app
```

2. **Install dependencies**

```bash
flutter pub get
```

3. **Run the app**

```bash
flutter run
```

### Build for Release

**Android:**

```bash
flutter build apk --release
```

**iOS:**

```bash
flutter build ios --release
```

## 🎨 App Structure

### Main Modules

1. **SCM Dashboard**: Central hub with three tabs (Summary, SLD, Data)
2. **Data View**: Real-time and historical energy consumption tracking
3. **Revenue View**: Financial analysis with cost breakdowns
4. **Analysis Pro**: Advanced analytics module
5. **Plant Management**: Multiple plant type monitoring (Generator, Natural Gas, Water Process)

## 🔧 Configuration

The app uses dependency injection with `get_it` for service management. All dependencies are configured in:

- `lib/app/app_dependencies.dart`
- `lib/app/provider_list.dart`

## 📝 License

This project is a Flutter demonstration application.

## 👥 Contributing

Contributions, issues, and feature requests are welcome!

## 📧 Contact

For any queries or support, please reach out to the development team.

---

**Built with ❤️ using Flutter**
