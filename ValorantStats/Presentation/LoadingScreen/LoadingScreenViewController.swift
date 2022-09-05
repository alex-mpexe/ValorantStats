//
//  LoadingScreenViewController.swift
//  ValorantStats
//
//  Created by Alexey on 9/4/22.
//

import UIKit

final class LoadingScreenViewController: CommonViewController<LoadingScreenViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
    }
    
    override func bind(viewModel: LoadingScreenViewModel) {
        self.viewModel = viewModel
    }
    
    private var viewModel: LoadingScreenViewModel?

}
