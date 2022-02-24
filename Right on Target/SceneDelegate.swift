//
//  SceneDelegate.swift
//  Right on Target
//
//  Created by Karpinets Alexander on 20.02.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        print("willConnectTo")
        
        window = UIWindow(frame: UIScreen.main.bounds)
        guard let window = window else { return }
        
        window.windowScene = windowScene
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "MainViewController")
        
        window.rootViewController = viewcontroller
        
        window.makeKeyAndVisible()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
   print("sceneDidDisconnect")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
   print("sceneDidBecomeActive")
    }

    func sceneWillResignActive(_ scene: UIScene) {
print("sceneWillResignActive")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
   print("sceneWillEnterForeground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
       print("sceneDidEnterBackground")
    }


}

