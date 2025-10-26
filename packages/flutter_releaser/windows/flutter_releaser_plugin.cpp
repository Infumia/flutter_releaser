#include "flutter_releaser_plugin.h"

// This must be included before many other Windows headers.
#include <windows.h>
#include <VersionHelpers.h>
#include <Shlwapi.h>

#pragma comment(lib, "Version.lib")
#pragma comment(lib, "Shlwapi.lib")

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>
#include <flutter/standard_method_codec.h>

#include <memory>
#include <sstream>
#include <filesystem>
#include <iostream>
#include <fstream>
#include <cstdlib>

namespace fs = std::filesystem;
namespace flutter_releaser {

// static
void FlutterReleaserPlugin::RegisterWithRegistrar(
    flutter::PluginRegistrarWindows *registrar) {
  auto channel =
      std::make_unique<flutter::MethodChannel<flutter::EncodableValue>>(
          registrar->messenger(), "flutter_releaser",
          &flutter::StandardMethodCodec::GetInstance());

  auto plugin = std::make_unique<FlutterReleaserPlugin>();

  channel->SetMethodCallHandler(
      [plugin_pointer = plugin.get()](const auto &call, auto result) {
        plugin_pointer->HandleMethodCall(call, std::move(result));
      });

  registrar->AddPlugin(std::move(plugin));
}

FlutterReleaserPlugin::FlutterReleaserPlugin() {}

FlutterReleaserPlugin::~FlutterReleaserPlugin() {}

void createBatFile(const std::wstring &updateDir, const std::wstring &destDir, const wchar_t *executable_path) {
    int updateSize = WideCharToMultiByte(CP_UTF8, 0, updateDir.c_str(), -1, NULL, 0, NULL, NULL);
    std::string updateDirStr(updateSize, 0);
    WideCharToMultiByte(CP_UTF8, 0, updateDir.c_str(), -1, &updateDirStr[0], updateSize, NULL, NULL);
    updateDirStr.pop_back();

    int destSize = WideCharToMultiByte(CP_UTF8, 0, destDir.c_str(), -1, NULL, 0, NULL, NULL);
    std::string destDirStr(destSize, 0);
    WideCharToMultiByte(CP_UTF8, 0, destDir.c_str(), -1, &destDirStr[0], destSize, NULL, NULL);
    destDirStr.pop_back();

    int exePathSize = WideCharToMultiByte(CP_UTF8, 0, executable_path, -1, NULL, 0, NULL, NULL);
    std::string exePathStr(exePathSize, 0);
    WideCharToMultiByte(CP_UTF8, 0, executable_path, -1, &exePathStr[0], exePathSize, NULL, NULL);
    exePathStr.pop_back();

    const std::string batScript =
        "@echo off\n"
        "chcp 65001 > NUL\n"
        "timeout /t 2 /nobreak > NUL\n"
        "xcopy /E /I /Y \"" +
        updateDirStr + "\\*\" \"" + destDirStr + "\\\"\n"
                                                 "rmdir /S /Q \"" +
        updateDirStr + "\"\n" +
        "timeout /t 1 /nobreak > NUL\n"
        "start \"\" \"" +
        exePathStr + "\"\n"
                     "timeout /t 1 /nobreak > NUL\n"
                     "del update_script.bat\n"
                     "\"\n"
                     "exit\n";

    std::ofstream batFile("update_script.bat");
    batFile << batScript;
    batFile.close();
    std::cout << "Temporary .bat created.\n";
}

void runBatFile() {
    STARTUPINFO si = {sizeof(si)};
    PROCESS_INFORMATION pi;

    WCHAR cmdLine[] = L"cmd.exe /c update_script.bat";
    if (CreateProcess(
            NULL,
            cmdLine,
            NULL,
            NULL,
            FALSE,
            CREATE_NO_WINDOW,
            NULL,
            NULL,
            &si,
            &pi)) {
      CloseHandle(pi.hProcess);
      CloseHandle(pi.hThread);
    } else {
      std::cout << "Failed to run the .bat file.\n";
    }
}

void RestartApp() {
    printf("Restarting the application...\n");
    char szFilePath[MAX_PATH];
    GetModuleFileNameA(NULL, szFilePath, MAX_PATH);

    wchar_t executable_path[MAX_PATH];
    GetModuleFileNameW(NULL, executable_path, MAX_PATH);

    printf("Executable path: %ls\n", executable_path);

    std::wstring updateDir = L".update";
    std::wstring destDir = L".";

    createBatFile(updateDir, destDir, executable_path);

    runBatFile();

    ExitProcess(0);
}

void FlutterReleaserPlugin::HandleMethodCall(
    const flutter::MethodCall<flutter::EncodableValue> &method_call,
    std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result
) {
    if (method_call.method_name().compare("restartApplication") == 0) {
        RestartApp();
        result->Success();
    } else {
        result->NotImplemented();
    }
}

}  // namespace flutter_releaser
