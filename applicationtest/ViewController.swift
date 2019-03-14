//
//  ViewController.swift
//  applicationtest
//
//  Created by Nihel Zerria on 08/03/2019.
//  Copyright © 2019 Nihel Zerria. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate ,UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var tabBar: UITabBar!
    

    var headlines = [
        Headline(id: 1, title: "Reservation", text: "Place garantie à board", image: "transport.png"),
        Headline(id: 2, title: "Ticket à l'unité", text: "allez simple ou allez retour.", image: "transport.png"),
        Headline(id: 3, title: "Ticket 10 Voyages", text: "Pour soi ou à partager", image: "transport.png"),
        Headline(id: 4, title: "Forfait", text: "Pass 1 jour,3 jours ou 7 jours", image: "transport.png"),
        Headline(id: 5, title: "Ticket 10 Voyages", text: "Pour soi ou à partager", image: "transport.png"),
        
        ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UINib(nibName: "StaticTableViewCell", bundle: nil), forCellReuseIdentifier: "mycell")

        tableView.dataSource = self
         print("test test test s")
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! StaticTableViewCell

        let headline = headlines[indexPath.row]
        cell.titleLabel?.text = headline.title
        cell.titleTextLabel.text = headline.text
//        cell.imageView?.image = UIImage(named: headline.image)
        cell.imageView?.contentMode = .scaleAspectFit

        return cell
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //getting the index path of selected row
        let indexPath = tableView.indexPathForSelectedRow
        
        if (indexPath?.row == 0) {
            
            let vc = SecondViewController(nibName: "SecondViewController", bundle: nil)
            self.present(vc, animated: true, completion: nil)

        }
        else if (indexPath?.row == 1) {
//
            let vc = SecondViewController(nibName: "SecondViewController", bundle: nil)
            
        }else {
            
        }
        

    }


}

