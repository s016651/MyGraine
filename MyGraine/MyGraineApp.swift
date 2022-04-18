//
//  MyGraineApp.swift
//  MyGraine
//
//  Created by Adam Lee (student LM) on 3/1/22.
//

import SwiftUI
import Firebase


class AppDelegate: UIResponder, UIApplicationDelegate {


  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
@main
struct MyGraineApp: App {
    @StateObject var userInfo = UserInfo()
    @StateObject var migraineInfo = MigraineInfo()
    @UIApplicationDelegateAdaptor private var appDelegate : AppDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userInfo)
                .environmentObject(migraineInfo)
        }
    }
}
