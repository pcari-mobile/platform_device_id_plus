import Flutter
import UIKit

@MainActor
public class SwiftPlatformDeviceIdPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "platform_device_id", binaryMessenger: registrar.messenger())
    let instance = SwiftPlatformDeviceIdPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
  DispatchQueue.main.async {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

}
