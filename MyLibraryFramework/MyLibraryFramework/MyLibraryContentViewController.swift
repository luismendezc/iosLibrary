//
//  MyLibraryContentViewController.swift
//  MyLibraryFramework
//
//  Created by Luis Enrique Mendez Cantero on 24.01.25.
//

import UIKit
import Lottie

class MyLibraryContentViewController: UIViewController {
    private var completion: (String) -> Void
    private let animationView = LottieAnimationView(name: "mexico_animation")
    
    init(completion: @escaping (String) -> Void) {
        self.completion = completion
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .black

        // Configure Lottie animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()

        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            animationView.widthAnchor.constraint(equalToConstant: 200),
            animationView.heightAnchor.constraint(equalToConstant: 200)
        ])

        // Add a button below the animation
        let button = UIButton(type: .system)
        button.setTitle("Send Info & Close", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: animationView.bottomAnchor, constant: 20),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 44)
        ])
    }

    @objc private func buttonTapped() {
        // Pass some info back to the callback
        completion("User pressed the button!")

        // Dismiss the navigation controller
        navigationController?.dismiss(animated: true, completion: nil)
    }
}
