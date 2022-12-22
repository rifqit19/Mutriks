//
//  SecondViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 19/11/22.
//

import UIKit

class DeterminanViewController: UIViewController {

    @IBOutlet weak var tabSegment: UISegmentedControl!
    var index_segment = 0
    
    @IBOutlet weak var fldMatriks1_1_1: UITextField!
    @IBOutlet weak var fldMatriks1_1_2: UITextField!
    @IBOutlet weak var fldMatriks1_1_3: UITextField!

    @IBOutlet weak var fldMatriks1_2_1: UITextField!
    @IBOutlet weak var fldMatriks1_2_2: UITextField!
    @IBOutlet weak var fldMatriks1_2_3: UITextField!

    
    @IBOutlet weak var fldMatriks1_3_1: UITextField!
    @IBOutlet weak var fldMatriks1_3_2: UITextField!
    @IBOutlet weak var fldMatriks1_3_3: UITextField!
    
    @IBOutlet weak var btnCalculate: UIButton!
    
    var mat1_1_1:Double = 0
    var mat1_1_2:Double = 0
    var mat1_1_3:Double = 0
    var mat1_1_4:Double = 0
    
    var mat1_2_1:Double = 0
    var mat1_2_2:Double = 0
    var mat1_2_3:Double = 0
    var mat1_2_4:Double = 0
    
    var mat1_3_1:Double = 0
    var mat1_3_2:Double = 0
    var mat1_3_3:Double = 0
    var mat1_3_4:Double = 0
    
    var mat1_4_1:Double = 0
    var mat1_4_2:Double = 0
    var mat1_4_3:Double = 0
    var mat1_4_4:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupMatriksField()
        
    }

    
    @IBAction func tabSegment(_ sender: UISegmentedControl) {
        index_segment = sender.selectedSegmentIndex
        print ("index: ", index_segment)
        setupMatriksField()
        
    }
    
    func setupView(){

        //Initialized

        //TabSegment
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .selected)
        
        //keyboard dismiss
        self.hideKeyboardWhenTappedAround()

        
    }

    func setupMatriksField(){
        
        if (index_segment == 0){
            
            //matriks 1
            fldMatriks1_1_1.isHidden = false
            fldMatriks1_1_2.isHidden = false
            fldMatriks1_1_3.isHidden = true

            fldMatriks1_2_1.isHidden = false
            fldMatriks1_2_2.isHidden = false
            fldMatriks1_2_3.isHidden = true

            fldMatriks1_3_1.isHidden = true
            fldMatriks1_3_2.isHidden = true
            fldMatriks1_3_3.isHidden = true
            
        }else if(index_segment == 1){
            
            //matriks 1
            fldMatriks1_1_1.isHidden = false
            fldMatriks1_1_2.isHidden = false
            fldMatriks1_1_3.isHidden = false

            fldMatriks1_2_1.isHidden = false
            fldMatriks1_2_2.isHidden = false
            fldMatriks1_2_3.isHidden = false

            fldMatriks1_3_1.isHidden = false
            fldMatriks1_3_2.isHidden = false
            fldMatriks1_3_3.isHidden = false

        }else{
            
            //matriks 1
            fldMatriks1_1_1.isHidden = false
            fldMatriks1_1_2.isHidden = false
            fldMatriks1_1_3.isHidden = false

            fldMatriks1_2_1.isHidden = false
            fldMatriks1_2_2.isHidden = false
            fldMatriks1_2_3.isHidden = false

            fldMatriks1_3_1.isHidden = false
            fldMatriks1_3_2.isHidden = false
            fldMatriks1_3_3.isHidden = false

        }
    }
    
    @IBAction func doCalculate(_ sender: Any) {
        getMatriks()
                
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let resultVC = storyBoard.instantiateViewController(withIdentifier: "DeterminanResultViewController") as! DeterminanResultViewController

        if (index_segment == 0){
            
            resultVC.determinan_result = String((mat1_1_1 * mat1_2_2) - (mat1_1_2 * mat1_2_1))
            
        }else if(index_segment == 1){
            
            resultVC.determinan_result = String(((mat1_1_1 * mat1_2_2 * mat1_3_3)+(mat1_1_2 * mat1_2_3 * mat1_3_1)+(mat1_1_3 * mat1_2_1 * mat1_3_2)) - ((mat1_1_3 * mat1_2_2 * mat1_3_1)+(mat1_1_1 * mat1_2_3 * mat1_3_2)+(mat1_1_2 * mat1_2_1 * mat1_3_3)))
            
        }
        
        
        self.present(resultVC, animated:true, completion:nil)
        
    }
    
    func getMatriks(){
        
         mat1_1_1 = fldMatriks1_1_1.text?.toDouble ?? 0
         mat1_1_2 = fldMatriks1_1_2.text?.toDouble ?? 0
         mat1_1_3 = fldMatriks1_1_3.text?.toDouble ?? 0
        
         mat1_2_1 = fldMatriks1_2_1.text?.toDouble ?? 0
         mat1_2_2 = fldMatriks1_2_2.text?.toDouble ?? 0
         mat1_2_3 = fldMatriks1_2_3.text?.toDouble ?? 0
        
         mat1_3_1 = fldMatriks1_3_1.text?.toDouble ?? 0
         mat1_3_2 = fldMatriks1_3_2.text?.toDouble ?? 0
         mat1_3_3 = fldMatriks1_3_3.text?.toDouble ?? 0
       
    }

    

}

