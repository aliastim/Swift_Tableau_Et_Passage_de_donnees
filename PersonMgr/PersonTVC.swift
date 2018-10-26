//
//  PersonTVC.swift
//  PersonMgr
//
//  Created by Timothée CORRADO on 24/10/2018.
//  Copyright © 2018 Timothée CORRADO. All rights reserved.
//

import UIKit

class PersonTVC: UITableViewController {
    
    var Jean = Person(fname: "Jean", lname: "Dupont", age: 32, nationality: "Français", gender: "Homme")
    var Marie = Person(fname: "Marie", lname: "Bouhiron", age: 19, nationality: "Français", gender: "Femme")
    var Louis = Person(fname: "Louis", lname: "Malrieu", age: 21, nationality: "Français", gender: "Homme")
    var Killian = Person(fname: "Killian", lname: "Galea", age: 21, nationality: "Français", gender: "Homme")
    
    var arrayPerson : [Person] = [Person]()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayPerson.append(Jean)
        arrayPerson.append(Marie)
        arrayPerson.append(Louis)
        arrayPerson.append(Killian)
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (arrayPerson.count)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            
            cell.textLabel?.text = (arrayPerson[indexPath.row].fname) + " " + (arrayPerson[indexPath.row].lname)
            cell.detailTextLabel?.text = (arrayPerson[indexPath.row].gender) + " - " + "\(arrayPerson[indexPath.row].age)" + " ans"
        
            return cell
        
        
        
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrayPerson.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath)
    {
        arrayPerson.swapAt(fromIndexPath.row, to.row)
        tableView.reloadData()
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//         Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "pushDetail"
        {
            let personDetailVC: PersonDetailVC = segue.destination as! PersonDetailVC
            let indexPath :IndexPath = tableView.indexPathForSelectedRow!
            //1st: get your person from your array based on your indexPath
            //2nd: give this person to your personDetailVC
            
            personDetailVC.indexPath = indexPath.row
            personDetailVC.name = arrayPerson[indexPath.row].fname
            personDetailVC.lname = arrayPerson[indexPath.row].lname
            personDetailVC.age = arrayPerson[indexPath.row].age
            personDetailVC.nationality = arrayPerson[indexPath.row].nationality
            personDetailVC.gender = arrayPerson[indexPath.row].gender
            
            
            
        
        }
        
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
