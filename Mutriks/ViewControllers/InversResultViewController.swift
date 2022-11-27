//
//  InversResultViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 27/11/22.
//

import UIKit

class InversResultViewController: UIViewController {

    
    var index_segment = 0
    
    var mat1_1_1 = " "
    var mat1_1_2 = " "
    var mat1_2_1 = " "
    var mat1_2_2 = " "
    
    var mat2_1_1 = " "
    var mat2_1_2 = " "
    var mat2_2_1 = " "
    var mat2_2_2 = " "

    
    var val1 = " "
    var val2 = " "
    
    @IBOutlet weak var fld1_1_1: UITextField!
    @IBOutlet weak var fld1_1_2: UITextField!
    @IBOutlet weak var fld1_2_1: UITextField!
    @IBOutlet weak var fld1_2_2: UITextField!
    
    @IBOutlet weak var fld2_1_1: UITextField!
    @IBOutlet weak var fld2_1_2: UITextField!
    @IBOutlet weak var fld2_2_1: UITextField!
    @IBOutlet weak var fld2_2_2: UITextField!


    @IBOutlet weak var txt_val1: UILabel!
    @IBOutlet weak var txt_val2: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fld1_1_1.text = mat1_1_1
        fld1_1_2.text = mat1_1_2
        fld1_2_1.text = mat1_2_1
        fld1_2_2.text = mat1_2_2
        
        fld2_1_1.text = mat2_1_1
        fld2_1_2.text = mat2_1_2
        fld2_2_1.text = mat2_2_1
        fld2_2_2.text = mat2_2_2

        
        txt_val1.text = val1
        txt_val2.text = val2

    }

}
