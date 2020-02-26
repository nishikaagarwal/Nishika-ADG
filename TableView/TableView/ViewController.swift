//
//  ViewController.swift
//  TableView
//
//  Created by Nishika Agarwal on 26/02/20.
//  Copyright © 2020 Nishika Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
@IBOutlet var tableview: UITableView!
    
    let names = [
         "Pragnya Deshpande",
         "Hemangi Jain",
         "Arlene D'Souza",
         "Angad Sandhu"
         ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
    }

}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me")
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
             
            return cell
    }
}
