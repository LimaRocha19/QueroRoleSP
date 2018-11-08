//
//  TableViewController.swift
//  QueroRoleSP
//
//  Created by Isaías Lima on 02/11/18.
//  Copyright © 2018 Souza Lima. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = UIAlertController(title: "Qual app você quer usar?", message: "Selecione o navegador de sua preferência :D", preferredStyle: .alert)

        let waze = UIAlertAction(title: "Waze", style: .default, handler: nil)
        let maps = UIAlertAction(title: "Mapas", style: .default, handler: nil)
        let goog = UIAlertAction(title: "Google Maps", style: .default, handler: nil)
        let canc = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)

        controller.addAction(waze)
        controller.addAction(maps)
        controller.addAction(goog)
        controller.addAction(canc)

        self.present(controller, animated: true, completion: nil)
    }
}
