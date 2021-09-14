//
//  ViewController.swift
//  WebKitTest
//
//  Created by Daniel Yamrak on 14.09.2021.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var webKitView: WKWebView!

//    let stringURL = "https://www.yelp.com/search?find_desc=&find_loc=New%20York%2C%20NY"

    override func viewDidLoad() {
        super.viewDidLoad()

        let htmlPath = Bundle.main.path(forResource: "ThomannPage", ofType: "html")
        let url = URL(fileURLWithPath: htmlPath!)

        activityIndicator.isHidden = false
        activityIndicator.startAnimating()

        webKitView.load(URLRequest(url: url))
        webKitView.uiDelegate = self

    }

//    override func web() {
//        activityIndicator.stopAnimating()
//        activityIndicator.isHidden = true
//    }

}

