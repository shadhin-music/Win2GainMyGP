[![Version](https://img.shields.io/cocoapods/v/Win2GainMyGP)](https://cocoapods.org/pods/Win2GainMyGP)
[![License](https://img.shields.io/github/license/shadhin-music/Win2GainMyGP)](https://github.com/shadhin-music/Win2GainMyGP/blob/main/LICENSE)
[![Platforms](https://img.shields.io/badge/Platforms-iOS%2011%2B-blue.svg)](https://github.com/shadhin-music/Win2GainMyGP/blob/main/LICENSE)
[![Languages](https://img.shields.io/badge/language-%20swift-FF69B4.svg?style=plastic)](#)
[![Code-Size](https://img.shields.io/github/languages/code-size/shadhin-music/Win2GainMyGP-iOS)](#)

# 📘 Win2GainMyGP — iOS Win-to-Gain quiz SDK

## 📄 Table of Contents

1.  Overview
2.  Features
3.  Installation
4.  Quick Start
5.  Token Provider Setup
6.  Tab Bar Handling
7.  Layout & Sizing
8.  Requirements
9.  Support
10. Roadmap
11. License

## 🚀 Overview

Win2GainMyGP is a lightweight, plug-and-play Win-Game SDK designed for
seamless integration inside the MyGP ecosystem.

## ✨ Features

-   Plug-and-play setup
-   Fullscreen callback
-   Token refresh delegation
-   Keychain persistence
-   Auto layout support

## 📦 Installation

``` ruby
pod 'Win2GainMyGP'
```

## ⚡ Quick Start

``` swift
collectionView.register(
    Win2GainCollectionViewCell.self,
    forCellWithReuseIdentifier: Win2GainCollectionViewCell.identifier
)
```

## 🔐 Token Provider Setup

``` swift
Win2GainTokenManager.shared.delegate = self
Win2GainTokenManager.shared.persistsInKeychain = true
```

## 📱 Tab Bar Handling

``` swift
extension AppDelegate: Win2GainTabBarEventDelegate {
    func win2GainScreenStatus(_ isFullScreen: Bool) {
        tabBarController.tabBar.isHidden = isFullScreen
    }
}
```

## 🧱 Requirements

-   iOS 13+
-   Swift 5+
-   iOS, iPadOS, macOS Catalyst supported

## 🛠 Roadmap

-   SPM Support
-   Dark Mode UI
-   Analytics hooks

## 📬 Support

-   Email: abir@cloud7bd.com
-   Email: mdabirhossain-dev@gmail.com
-   Phone: +8801521717367

## 📄 License

MIT License
