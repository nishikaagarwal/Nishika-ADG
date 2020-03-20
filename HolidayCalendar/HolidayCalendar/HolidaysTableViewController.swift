//
//  ViewController.swift
//  HolidayCalendar
//
//  Created by Nishika Agarwal on 11/03/20.
//  Copyright © 2020 Nishika Agarwal. All rights reserved.
//

import UIKit

class HolidaysTableViewController: UIViewController {
 
    @IBOutlet weak var searchBar : UISearchBar!
    
    let listOfHolidays = [HolidayDetail]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
                self.navigationItem.title = "\(self.listOfHolidays.count) Holidays"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }

    override func NumberOfSections(in tableView: UITableView) -> {
        return 1
    }

    override func tableView(_ tableView: UITableView, NumberOfRowsInSection section: Int) -> Int {
        return listOfHolidays.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: indexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let holiday = listOfHolidays[indexPath.row]
        
        cell.textLabel?.text = holiday.name
        cell.detailTextLabel?.text = holiday.date.iso
        return cell
    }
    
    extension HolidaysTableViewController: UISearchBarDelegate {
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
            guard let searchBarText = searchBar.texr else {
                return
            }
            let holidayRequest = HolidayRequest(countryCode: searchBarText)
            holidayRequest.getHolidays { [weak self] result in
                switch result {
                case.failure(let error):
                    print(error)
                case.success(let holidays):
                    self?.listOfHolidays = holidays
                }
            }
            
        }
    }
}


