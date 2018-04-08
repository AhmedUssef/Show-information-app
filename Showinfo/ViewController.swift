//
//  ViewController.swift
//  Showinfo
//
//  Created by Ahmed on 3/31/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var TabelView: UITableView!
    
    //var Array :[String] = ["JavaScript","php","Python","Swift"]
    var Array = [(title: "JavaScript", img:"JavaScript", about:"Used in Web pages, JavaScript is a client-side programming language. This means JavaScript scripts are read, interpreted and executed in the client, which is your Web browser. By comparison, server-side programming languages run on a remote computer, such as a server hosting a website.")
        ,(title: "php", img:"php", about:"PHP (recursive acronym for PHP: Hypertext Preprocessor) is a widely-used open source general-purpose scripting language that is especially suited for web development and can be embedded into HTML."),
         (title: "Python", img:"Python", about:"Python is a general purpose programming language created in the late 1980s, and named after Monty Python, that's used by thousands of people to do things from testing microchips at Intel, to powering Instagram, to building video games with the PyGame library."),
         (title: "Swift", img:"Swift", about:"Swift is a powerful and intuitive programming language for macOS, iOS, watchOS and tvOS. Writing Swift code is interactive and fun, the syntax is concise yet expressive, and Swift includes modern features developers love.")]
    override func viewDidLoad() {
        TabelView.tableFooterView = UIView()
        super.viewDidLoad()
        TabelView.delegate = self
        TabelView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Array.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CellVC
        
        cell.name.text = Array[indexPath.row].title
        let imgName = Array[indexPath.row].img
        cell.cover.image = UIImage(named:imgName )
        
        cell.setNeedsLayout()
        cell.layoutIfNeeded()
        
        
        return cell
    

        
    
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //make sure this is the segue you want
        if segue.identifier == "next" {
            
            //access the view controller you are moving to
            let nextVC = segue.destination as! Infopage
            
            //update its value with the current value
            nextVC.array = self.Array
            
            //get the selected row
            let selectedrow = TabelView.indexPathForSelectedRow?.row
            
            //update the second view controller' songID to the new value = selected song
            nextVC.rowID = selectedrow!
            
        }
        
    }
    
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TabelView.frame.size.height / 4
    }

}

