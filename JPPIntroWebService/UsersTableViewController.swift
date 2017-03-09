//
//  UsersTableViewController.swift
//  JPPIntroWebService
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit

class UsersTableViewController: UITableViewController {

    var arrayUsers : [WSPostUser] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        arrayUsers = APIManagerData.shared.getUserApi()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayUsers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellUser = tableView.dequeueReusableCell(withIdentifier: "UserCustomCell", for: indexPath) as! UserCustomCell
        
        let userModel = arrayUsers[indexPath.row]
        
        // Configure the cell...
        cellUser.myIdLb.text = "\(userModel.id!)"
        cellUser.myNombreLb.text = userModel.name
        cellUser.myUsernameLb.text = userModel.username
        cellUser.myEmailLb.text = userModel.email
        cellUser.myCalleLb.text = userModel.address?.street
        cellUser.myNumeroLb.text = userModel.address?.suite
        cellUser.myCiudadLb.text = userModel.address?.city
        cellUser.myCpLb.text = userModel.address?.zipcode
        cellUser.myLatLb.text = userModel.address?.geo?.lat
        cellUser.myLongLb.text = userModel.address?.geo?.lng
        cellUser.myMovilLb.text = userModel.phone
        cellUser.myWebsiteLb.text = userModel.website
        cellUser.myNombreEmpLb.text = userModel.company?.name
        cellUser.mypromocionalLb.text = userModel.company?.catchPhrase
        cellUser.myBsLb.text = userModel.company?.bs
        
        cellUser.myMapaBt.tag = indexPath.row
        cellUser.myUrlBt.tag = indexPath.row
        
        cellUser.myMapaBt.addTarget(self, action: #selector(self.muestraMapa(_:)), for: .touchUpInside)
        cellUser.myUrlBt.addTarget(self, action: #selector(self.muestraUrl(_:)), for: .touchUpInside)
        
        /*let pinchoMapa = UITapGestureRecognizer(target: self, action: #selector(muestraMapa(_ :)))
        cellUser.myMapaBt.addGestureRecognizer(pinchoMapa)
        let pinchoUrl = UITapGestureRecognizer(target: self, action: #selector(muestraUrl(_ :)))
        cellUser.myUrlBt.addGestureRecognizer(pinchoUrl)*/
        
        
        return cellUser
    }
    

 /*   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       /* let mapaView = self.storyboard?.instantiateViewController(withIdentifier: "MapaViewController") as! MapaViewController
        mapaView.longitudData = arrayUsers[indexPath.row].address?.geo?.lng
        mapaView.latitudData = arrayUsers[indexPath.row].address?.geo?.lat
        mapaView.direccionData = arrayUsers[indexPath.row].address?.street
        mapaView.codigoPostalData = arrayUsers[indexPath.row].address?.zipcode
        present(mapaView, animated: true, completion: nil)*/
        
        let webView = self.storyboard?.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        webView.urlData =  arrayUsers[indexPath.row].website
        present(webView, animated: true, completion: nil)
        
        
    }*/
    
    func muestraMapa(_ sender : UIButton){
        let mapaView = self.storyboard?.instantiateViewController(withIdentifier: "MapaViewController") as! MapaViewController
        mapaView.longitudData = arrayUsers[sender.tag].address?.geo?.lng
        mapaView.latitudData = arrayUsers[sender.tag].address?.geo?.lat
        mapaView.direccionData = arrayUsers[sender.tag].address?.street
        mapaView.codigoPostalData = arrayUsers[sender.tag].address?.zipcode
        present(mapaView, animated: true, completion: nil)
    }
    
    func muestraUrl(_ sender : UIButton){
        let webView = self.storyboard?.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        webView.urlData =  arrayUsers[sender.tag].website
        present(webView, animated: true, completion: nil)

    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
