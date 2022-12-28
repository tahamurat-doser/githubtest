//
//  ViewController.swift
//  KentSimgeleri
//
//  Created by Taha  on 27.12.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        
        tableView.dataSource = self
        
        var kentSimgeleriNames = [String]()
        kentSimgeleriNames.append("AniHarabeleri")
        kentSimgeleriNames.append("Balikligol")
        kentSimgeleriNames.append("KangalKopegi")
        kentSimgeleriNames.append("Koprubası")
        kentSimgeleriNames.append("NemrutDagı")
        
        var kentSimgeleriImages = [UIImage()]
        kentSimgeleriImages.append(UIImage(named: "AniHarabeleri")!)
        kentSimgeleriImages.append(UIImage(named: "Balikligol")!)
        kentSimgeleriImages.append(UIImage(named: "KangalKopegi")!)
        kentSimgeleriImages.append(UIImage(named: "Koprubası")!)
        kentSimgeleriImages.append(UIImage(named: "NemrutDagı")!)
        
                                   
                                   
                                   
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test" şeklinde de yazılabilirdi
        var content = cell.defaultContentConfiguration()
        content.text = "Test"
        //content.secondary = " yaz istedğini"
        cell.contentConfiguration = content
        return cell
    }
    
}

