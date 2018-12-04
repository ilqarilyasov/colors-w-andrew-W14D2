//
//  ColorController.swift
//  Colors
//
//  Created by Ilgar Ilyasov on 12/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class ColorController {
    static let shared = ColorController()
    
    let colors = [Color(name: "Red", color: .red),
                  Color(name: "Orange", color: .orange),
                  Color(name: "Yellow", color: .yellow),
                  Color(name: "Green", color: .green),
                  Color(name: "Blue", color: .blue),
                  Color(name: "Cyan", color: .cyan),
                  Color(name: "Violet", color: .purple)]
}
