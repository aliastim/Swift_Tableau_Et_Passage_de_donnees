//
//  PersonDetailVC.swift
//  PersonMgr
//
//  Created by Timothée CORRADO on 24/10/2018.
//  Copyright © 2018 Timothée CORRADO. All rights reserved.
//

import UIKit

class PersonDetailVC: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var SousLabel: UILabel!
    @IBOutlet weak var genre: UILabel!
    @IBOutlet weak var nationalite: UILabel!
    
    //On créer la variable d'abord ici et on l'appelle dans le PersonTVC
    var indexPath: Int!
    var name : String!
    var lname : String!
    var age : Int!
    var nationality : String!
    var gender : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //titleLabel.text = arrayPerson[IndexPath.row].fname
        titleLabel.text = name + " " + lname
        SousLabel.text = "\(age!)" + " ans"
        genre.text = "Genre : " + gender
        nationalite.text = "Nationalité : " + nationality
        
        
    }
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
