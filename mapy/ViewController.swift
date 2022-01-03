//
//  ViewController.swift
//  mapy
//
//  Created by kprzystalski on 21/10/2019.
//  Copyright © 2019 kprzystalski. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    let userLocationManager = CLLocationManager()
        
    @IBOutlet weak var mapy: MKMapView!
    
    @IBOutlet weak var Krakow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func idzDoKrakowa(sender: AnyObject){
        let location = CLLocationCoordinate2DMake(50.0246289, 19.8924691)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: location, span: span)
        mapy.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate.latitude = location.latitude
        annotation.coordinate.longitude = location.longitude
        annotation.title = "Kraków"
        annotation.subtitle = "UJ"
        mapy.addAnnotation(annotation)
    }
    
    @IBAction func pokazHybrydowa(sender:AnyObject){
        mapy.mapType = MKMapType.hybrid
    }
    
    
}

