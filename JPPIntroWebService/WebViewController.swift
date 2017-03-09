//
//  WebViewController.swift
//  JPPIntroWebService
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    
    //MARK: - Variables locales
    var urlData : String?
    
    //MARK: - IBOutlets
    @IBOutlet weak var webView: UIWebView!
    
    
    //MARK: - IBActions
    @IBAction func closeView(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL (string: "http://www." + urlData!)
        print(url!)
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj);
        
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
