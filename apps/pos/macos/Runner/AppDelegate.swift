import Cocoa
import FlutterMacOS

@main
class AppDelegate: FlutterAppDelegate {
    override func applicationDidFinishLaunching(_ aNotification: Notification) {
        // 获取主窗口
        guard let window = NSApplication.shared.windows.first else {
            return
        }

        // 获取 FlutterViewController
        guard let controller = window.contentViewController as? FlutterViewController else {
            return
        }

        // 创建 MethodChannel
        let channel = FlutterMethodChannel(name: "cashbox.channel", binaryMessenger: controller.engine.binaryMessenger)

        // 设置方法调用处理程序
        channel.setMethodCallHandler { [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) in
            guard call.method == "open" else {
                result(FlutterMethodNotImplemented)
                return
            }

            // 在这里实现 open 方法的具体逻辑
            // 例如，你可以执行一些 macOS 特定的操作
            // 这里简单返回一个成功结果
            result("Success")
        }

        super.applicationDidFinishLaunching(aNotification)
    }

    override func applicationShouldTerminateAfterLastWindowClosed(_: NSApplication) -> Bool {
        return false
    }

    override func applicationShouldHandleReopen(_: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if !flag {
            for window in NSApp.windows {
                if !window.isVisible {
                    window.setIsVisible(true)
                }
                window.makeKeyAndOrderFront(self)
                NSApp.activate(ignoringOtherApps: true)
            }
        }
        return true
    }

    override func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
}
