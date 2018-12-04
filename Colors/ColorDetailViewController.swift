//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Ilgar Ilyasov on 12/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem //Bar Button Item for specifically for detail view as Back Button
        navigationItem.leftItemsSupplementBackButton = true //IMPORTANT
        
        updateViews()

    }
    
    private func updateViews() {
        
        guard let color = color, isViewLoaded else { return }
        
        title = color.name
        view.backgroundColor = color.color
    }
    
    var color: Color? {
        didSet { updateViews()}
    }
}
