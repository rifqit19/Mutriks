//
//  AboutAppViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 27/11/22.
//

import Foundation
import UIKit

class AboutAppViewController: UIViewController {

    
    @IBOutlet weak var tvVersion: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nsObject: AnyObject? = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as AnyObject?
        let version = nsObject as! String

        tvVersion.text = " v" + version

    }

}
