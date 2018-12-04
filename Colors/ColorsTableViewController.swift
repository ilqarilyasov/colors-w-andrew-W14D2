//
//  ColorsTableViewController.swift
//  Colors
//
//  Created by Ilgar Ilyasov on 12/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ColorController.shared.colors.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        let color = ColorController.shared.colors[indexPath.row]
        
        cell.textLabel?.text = color.name

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDetail" {
            let navVC = segue.destination as! UINavigationController //IMPORTANT
            let detailVC = navVC.topViewController as! ColorDetailViewController //IMPORTANT
            let indexPath = tableView.indexPathForSelectedRow!
            let colors = ColorController.shared.colors
            detailVC.color = colors[indexPath.row]
        }
        
    }

}
