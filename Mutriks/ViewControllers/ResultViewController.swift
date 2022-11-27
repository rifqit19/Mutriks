//
//  ResultViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 26/11/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var fldMatriks1_1_1: UITextField!
    @IBOutlet weak var fldMatriks1_1_2: UITextField!
    @IBOutlet weak var fldMatriks1_1_3: UITextField!
    @IBOutlet weak var fldMatriks1_1_4: UITextField!

    @IBOutlet weak var fldMatriks1_2_1: UITextField!
    @IBOutlet weak var fldMatriks1_2_2: UITextField!
    @IBOutlet weak var fldMatriks1_2_3: UITextField!
    @IBOutlet weak var fldMatriks1_2_4: UITextField!

    
    @IBOutlet weak var fldMatriks1_3_1: UITextField!
    @IBOutlet weak var fldMatriks1_3_2: UITextField!
    @IBOutlet weak var fldMatriks1_3_3: UITextField!
    @IBOutlet weak var fldMatriks1_3_4: UITextField!

    
    @IBOutlet weak var fldMatriks1_4_1: UITextField!
    @IBOutlet weak var fldMatriks1_4_2: UITextField!
    @IBOutlet weak var fldMatriks1_4_3: UITextField!
    @IBOutlet weak var fldMatriks1_4_4: UITextField!
    
    var index_segment = 0
    
    var mat1_1_1 = " "
    var mat1_1_2 = " "
    var mat1_1_3 = " "
    var mat1_1_4 = " "
    
    var mat1_2_1 = " "
    var mat1_2_2 = " "
    var mat1_2_3 = " "
    var mat1_2_4 = " "
    
    var mat1_3_1 = " "
    var mat1_3_2 = " "
    var mat1_3_3 = " "
    var mat1_3_4 = " "
    
    var mat1_4_1 = " "
    var mat1_4_2 = " "
    var mat1_4_3 = " "
    var mat1_4_4 = " "



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupMatriksField()
        setupValue()
    }
    
    func setupValue(){
        
        fldMatriks1_1_1.text = mat1_1_1
        fldMatriks1_1_2.text = mat1_1_2
        fldMatriks1_1_3.text = mat1_1_3
        fldMatriks1_1_4.text = mat1_1_4

        fldMatriks1_2_1.text = mat1_2_1
        fldMatriks1_2_2.text = mat1_2_2
        fldMatriks1_2_3.text = mat1_2_3
        fldMatriks1_2_4.text = mat1_2_4

        fldMatriks1_3_1.text = mat1_3_1
        fldMatriks1_3_2.text = mat1_3_2
        fldMatriks1_3_3.text = mat1_3_3
        fldMatriks1_3_4.text = mat1_3_4

        fldMatriks1_4_1.text = mat1_4_1
        fldMatriks1_4_2.text = mat1_4_2
        fldMatriks1_4_3.text = mat1_4_3
        fldMatriks1_4_4.text = mat1_4_4

    }

    func setupMatriksField(){
        
        if (index_segment == 0){
            
            //matriks 1
            fldMatriks1_1_1.isHidden = false
            fldMatriks1_1_2.isHidden = false
            fldMatriks1_1_3.isHidden = true
            fldMatriks1_1_4.isHidden = true

            fldMatriks1_2_1.isHidden = false
            fldMatriks1_2_2.isHidden = false
            fldMatriks1_2_3.isHidden = true
            fldMatriks1_2_4.isHidden = true

            fldMatriks1_3_1.isHidden = true
            fldMatriks1_3_2.isHidden = true
            fldMatriks1_3_3.isHidden = true
            fldMatriks1_3_4.isHidden = true

            fldMatriks1_4_1.isHidden = true
            fldMatriks1_4_2.isHidden = true
            fldMatriks1_4_3.isHidden = true
            fldMatriks1_4_4.isHidden = true

            
        }else if(index_segment == 1){
            
            //matriks 1
            fldMatriks1_1_1.isHidden = false
            fldMatriks1_1_2.isHidden = false
            fldMatriks1_1_3.isHidden = false
            fldMatriks1_1_4.isHidden = true

            fldMatriks1_2_1.isHidden = false
            fldMatriks1_2_2.isHidden = false
            fldMatriks1_2_3.isHidden = false
            fldMatriks1_2_4.isHidden = true

            fldMatriks1_3_1.isHidden = false
            fldMatriks1_3_2.isHidden = false
            fldMatriks1_3_3.isHidden = false
            fldMatriks1_3_4.isHidden = true

            fldMatriks1_4_1.isHidden = true
            fldMatriks1_4_2.isHidden = true
            fldMatriks1_4_3.isHidden = true
            fldMatriks1_4_4.isHidden = true

        }else if(index_segment == 2){
            
            //matriks 1
            fldMatriks1_1_1.isHidden = false
            fldMatriks1_1_2.isHidden = false
            fldMatriks1_1_3.isHidden = false
            fldMatriks1_1_4.isHidden = false

            fldMatriks1_2_1.isHidden = false
            fldMatriks1_2_2.isHidden = false
            fldMatriks1_2_3.isHidden = false
            fldMatriks1_2_4.isHidden = false

            fldMatriks1_3_1.isHidden = false
            fldMatriks1_3_2.isHidden = false
            fldMatriks1_3_3.isHidden = false
            fldMatriks1_3_4.isHidden = false

            fldMatriks1_4_1.isHidden = false
            fldMatriks1_4_2.isHidden = false
            fldMatriks1_4_3.isHidden = false
            fldMatriks1_4_4.isHidden = false

            
        }else{
            
            //matriks 1
            fldMatriks1_1_1.isHidden = false
            fldMatriks1_1_2.isHidden = false
            fldMatriks1_1_3.isHidden = false
            fldMatriks1_1_4.isHidden = false

            fldMatriks1_2_1.isHidden = false
            fldMatriks1_2_2.isHidden = false
            fldMatriks1_2_3.isHidden = false
            fldMatriks1_2_4.isHidden = false

            fldMatriks1_3_1.isHidden = false
            fldMatriks1_3_2.isHidden = false
            fldMatriks1_3_3.isHidden = false
            fldMatriks1_3_4.isHidden = false

            fldMatriks1_4_1.isHidden = false
            fldMatriks1_4_2.isHidden = false
            fldMatriks1_4_3.isHidden = false
            fldMatriks1_4_4.isHidden = false

        }
    }
    

}

