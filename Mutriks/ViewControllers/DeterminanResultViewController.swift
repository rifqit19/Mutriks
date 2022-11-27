//
//  DeterminanResultViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 27/11/22.
//

import Foundation
import UIKit

class DeterminanResultViewController: UIViewController {

    @IBOutlet weak var txtDeterminan: UILabel!
    
    var determinan_result = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtDeterminan.text = determinan_result

    }

}

