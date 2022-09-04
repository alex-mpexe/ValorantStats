//
//  ApplicationDeps.swift
//  ValorantStats
//
//  Created by Alexey on 9/4/22.
//

import Foundation

protocol ApplicationDeps:
    LoadingScreenInteractorDeps
{}

final class ApplicationDepsImpl: ApplicationDeps {
    
    // MARK: - Singleton
    static let shared = ApplicationDepsImpl()
}
