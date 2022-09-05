//
//  BaseRouter.swift
//  ValorantStats
//
//  Created by Георгий on 05.09.2022.
//

import Foundation
import UIKit

protocol Router {
    func route(to controller: UIViewController)
}

class BaseRouter {
    
    // MARK: - Initializers
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    // MARK: - public methods
    
    func routeToLoadingScreen() {
        let loadingVC = LoadingScreenViewController()
        let interactor = LoadingScreenInteractorImpl(deps: deps)
        let viewModel = LoadingScreenViewModel(interactor: interactor)
        loadingVC.bind(viewModel: viewModel)
        window?.rootViewController = loadingVC
        window?.makeKeyAndVisible()
    }
    
    // MARK: - private properties
    
    private let window: UIWindow?
    private let deps: ApplicationDeps = ApplicationDepsImpl.shared
}
