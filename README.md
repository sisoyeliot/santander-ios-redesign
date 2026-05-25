# Santander iOS Redesign
![Static Badge](https://img.shields.io/badge/swift-F54A2A?style=for-the-badge&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-Blue.svg?logo=apple&logoColor=white&style=for-the-badge)
![Platform](https://img.shields.io/badge/iOS-26.0-black.svg?logo=apple&logoColor=white&style=for-the-badge)

A personal redesign of the Santander Spain iOS application built entirely with SwiftUI. This project leverages Apple's native design principles to create a seamless, fluid, and highly integrated user experience.

*Note: This is an unofficial, educational redesign. Please read the Legal Notice below.*

## Preview

<table align="center">
  <tr>
    <td align="center">
      <img src="./readmeFiles/Simulator Screenshot - iPhone 17 Pro - 2026-05-25 at 14.15.06.png" width="250" alt="Home Screen Hidden Balance">
      <br>
      <i>Hidden Balance</i>
    </td>
    <td align="center">
      <img src="./readmeFiles/Simulator Screenshot - iPhone 17 Pro - 2026-05-25 at 14.15.09.png" width="250" alt="Home Screen Visible Balance">
      <br>
      <i>Visible Balance</i>
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="./readmeFiles/Simulator Screenshot - iPhone 17 Pro - 2026-05-25 at 14.15.16.png" width="250" alt="Credit Card View">
      <br>
      <i>Interactive Carousel (Credit)</i>
    </td>
    <td align="center">
      <img src="./readmeFiles/Simulator Screenshot - iPhone 17 Pro - 2026-05-25 at 14.15.26.png" width="250" alt="Debit Card View">
      <br>
      <i>Interactive Carousel (Debit)</i>
    </td>
  </tr>
</table>

For additional screenshots, please refer to the `./readmeFiles/` directory.

## Features

Based on the latest iOS design guidelines, this redesign implements several advanced UI/UX features:

- A privacy toggle integrated into the navigation bar that allows users to instantly hide or show sensitive account balances, updating the UI dynamically with masked characters.

- A native horizontal scroll view (using scrollTargetBehavior) showcasing credit, debit, and prepaid cards. Each physical card component features unique gradients, custom noise textures, and specific layouts.

- A sticky branded header providing immediate access to common actions (Bizum, Transfers, Shortcuts) using clean, circular interactive buttons that blend seamlessly with the scroll behavior.

- Utilization of SwiftUI's ultra-thin materials and background blur effects for contact sections (Help Center, Commercial Expert) and secondary action grids, mimicking the modern iOS aesthetic.

- A bespoke bottom tab bar integrating the main application sections (Home, Wealth, Insurance, Analysis, Search) with clear, accessible typography and iconography.

## Installation and Usage

1. Clone the repository:
```bash
git clone https://github.com/sisoyeliot/santander-ios-redesign.git
```

2. Open the project:

Locate and open the `santander.xcodeproj` file in Xcode.

3. Run the application:

Select an iOS Simulator (optimized for iOS 26+) and press Cmd + R to build and run.

## Key Learnings

Developing this redesign provided valuable insights into advanced SwiftUI layout mechanics, state architecture, and production-level user experience design:

1. Advanced layout control and customization: Moving beyond standard native components to build bespoke, edge-to-edge interfaces. This involved mastering layout alignments using custom dividers, using content shapes to expand interactive touch targets, and managing complex multi-colored background behaviors during scroll view bounces to eliminate safe area clipping.

2. State architecture and interface privacy: Implementing clean data flows using structural bindings to synchronize UI states across the layout. Developing the dynamic balance visibility feature highlighted the importance of managing reactive states efficiently across independent view components.

3. Polishing high-fidelity mobile UX: Gaining practical experience with modern scroll mechanics introduced in recent iOS versions, such as view-aligned scroll target behaviors for carousels. Replicating a production-ready fintech interface required meticulous attention to pixel-perfect spacing, typography hierarchies, and native material blending.

4. Architecting for scalability: Designing modular mock factories decoupled by distinct data domains. This approach reinforced the discipline of structuring clean, decoupled data structures capable of seamlessly transitioning from local test factories to live backend API endpoints.

## Project Structure

```
santander/
|- Components/      # Reusable UI components 
|- Views/           # Main application screens
|- Resources/       # Custom images, textures, and typography
|- Extensions/      # Struct and View extensions (eg, custom colors)
|- Domain/          # API and data-related files
   |- Models/       # Data structures and protocols
   |- MockData/     # Mock data factories for UI testing
```

*Note: Unit and UI tests are currently pending implementation and are not detailed in this structure.*

## Contributing

Contributions are welcome. If you wish to contribute to this project:

1. Fork the repository.

2. Create a new branch for your feature.

3. Commit and push your changes.

4. Open a Pull Request.

## License and Legal Notice

### Source Code License

The source code of this project is distributed under the MIT License. You are free to use the SwiftUI components, architectural patterns, and technical solutions implemented here for your own projects or learning purposes.

### Trademark and Design Disclaimer

This project is strictly an educational and technical demonstration exercise created for portfolio purposes.

1. It is NOT affiliated with, associated with, authorized by, endorsed by, or in any way officially connected with Banco Santander S.A. or any of its subsidiaries.

2. All names, trademarks, logos, and original visual designs belong to their respective owners (eg, Apple Inc., Banco Santander S.A., Mastercard).

3. This project does not handle real user data, does not connect to the bank's actual servers, and must never be used for commercial purposes or identity spoofing.