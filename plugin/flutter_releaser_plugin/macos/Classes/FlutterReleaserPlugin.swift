import Cocoa
import FlutterMacOS

public class FlutterReleaserPlugin: NSObject, FlutterPlugin {
    func restartApp() {
        let executablePath = Bundle.main.executablePath!
        print("executablePath path: \(executablePath)")

        NSApplication.shared.terminate(nil)

        let updateFolder = Bundle.main.bundlePath + "/Contents/.update"
        do {
            try copyAndReplaceFiles(from: updateFolder, to: Bundle.main.bundlePath + "/Contents")
        } catch {
            print("Error updating files: \(error)")
            return
        }

        do {
            try FileManager.default.setAttributes([.posixPermissions: 0o755], ofItemAtPath: executablePath)

            let process = Process()
            process.executableURL = URL(fileURLWithPath: executablePath)
            process.arguments = []
            try process.run()
        } catch {
            print("Error during restart: \(error)")
        }

        try? FileManager.default.removeItem(atPath: updateFolder)
    }

    func copyAndReplaceFiles(from sourcePath: String, to destinationPath: String) throws {
        let fileManager = FileManager.default
        let enumerator = fileManager.enumerator(atPath: sourcePath)

        while let element = enumerator?.nextObject() as? String {
            let sourceItemPath = (sourcePath as NSString).appendingPathComponent(element)
            let destinationItemPath = (destinationPath as NSString).appendingPathComponent(element)

            var isDir: ObjCBool = false
            if fileManager.fileExists(atPath: sourceItemPath, isDirectory: &isDir) {
                if isDir.boolValue {
                    if !fileManager.fileExists(atPath: destinationItemPath) {
                        try fileManager.createDirectory(atPath: destinationItemPath, withIntermediateDirectories: true, attributes: nil)
                    }
                } else {
                    let attributes = try fileManager.attributesOfItem(atPath: sourceItemPath)
                    if attributes[.type] as? FileAttributeType == .typeSymbolicLink {
                        if fileManager.fileExists(atPath: destinationItemPath) {
                            try fileManager.removeItem(atPath: destinationItemPath)
                        }
                        let target = try fileManager.destinationOfSymbolicLink(atPath: sourceItemPath)
                        try fileManager.createSymbolicLink(atPath: destinationItemPath, withDestinationPath: target)
                    } else {
                        if fileManager.fileExists(atPath: destinationItemPath) {
                            try fileManager.replaceItem(at: URL(fileURLWithPath: destinationItemPath), withItemAt: URL(fileURLWithPath: sourceItemPath), backupItemName: nil, options: [], resultingItemURL: nil)
                        } else {
                            try fileManager.copyItem(atPath: sourceItemPath, toPath: destinationItemPath)
                        }
                    }
                }
            }
        }
    }

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_releaser", binaryMessenger: registrar.messenger)
    let instance = FlutterReleaserPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      switch call.method {
      case "restartApplication":
          restartApp()
          result(nil)
      default:
          result(FlutterMethodNotImplemented)
      }
  }
}
