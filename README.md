# tetris

双人俄罗斯方块游戏客户端

# 编译web端

flutter build web --release --dart-define=FLUTTER_WEB_USE_SKIA=true

flutter build web --release --dart-define=FLUTTER_WEB_USE_EXPERIMENTAL_CANVAS_TEXT=true

> 如使用--dart-define=FLUTTER_WEB_USE_SKIA=true可以提高性能，但中文会乱码
> --dart-define=FLUTTER_WEB_USE_EXPERIMENTAL_CANVAS_TEXT=true 可以提高性能，不会中文会乱码

# macos可执行文件

joy_tetris_flutter_macos.zip 是macos可执行文件，解压后即可使用，拷贝两份可同时打开两个客户端

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

