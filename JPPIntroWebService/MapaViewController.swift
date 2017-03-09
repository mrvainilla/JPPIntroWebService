//
//  MapaViewController.swift
//  JPPIntroWebService
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit
import MapKit


class MapaViewController: UIViewController {
    
    
    //MARK: - IBoutlets
    @IBOutlet weak var myMap: MKMapView!
    
    
    //MARK: - Variables locales
    var latitudData : String?
    var longitudData : String?
    var direccionData : String?
    var codigoPostalData : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let latitud = Double(latitudData!)
        let longitud = Double(longitudData!)
        
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitud! , longitude: longitud!), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        myMap.setRegion(region, animated: true)
        
        let chincheta = MKPointAnnotation()
        chincheta.coordinate = CLLocationCoordinate2D(latitude: latitud! , longitude: longitud!)
        chincheta.title = direccionData
        chincheta.subtitle = codigoPostalData
        myMap.addAnnotation(chincheta)
        
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

    
    //MARK: - IBActions
    @IBAction func closeView(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
