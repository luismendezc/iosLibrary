//
//  MyLibraryManager.swift
//  MyLibraryFramework
//
//  Created by Luis Enrique Mendez Cantero on 24.01.25.
//

import UIKit

public class MyLibraryManager {
    public static let shared = MyLibraryManager()

    /// Opens the view controller with animation and a callback
    /// - Parameters:
    ///   - presentingViewController: The view controller that will present the navigation controller.
    ///   - completion: Callback that returns a result when the navigation is dismissed.
    public func openViewWithAnimation(
        presentingViewController: UIViewController,
        completion: @escaping (String) -> Void
    ) {
        // Create the content view controller with the completion callback
        let contentViewController = MyLibraryContentViewController(completion: completion)
        
        // Wrap the content view controller in a navigation controller
        let navController = UINavigationController(rootViewController: contentViewController)
        navController.modalPresentationStyle = .fullScreen
        
        // Present the navigation controller
        presentingViewController.present(navController, animated: true, completion: nil)
    }
}
