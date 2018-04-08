//
//  Infopage.swift
//  Showinfo
//
//  Created by Ahmed on 4/1/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit

class Infopage: UIViewController {

    @IBOutlet weak var langlabel: UILabel!
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var coverphoto: UIImageView!
    var array = [(title: "", img: "", about: "")]
    var rowID = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imgName = array[rowID].img
        coverphoto.image = UIImage(named:imgName )
        
          langlabel.text = array[rowID].title
        textview.text = array[rowID].about
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
