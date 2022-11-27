//
//  SecondViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 19/11/22.
//

import UIKit

class InversViewController: UIViewController {
    

    @IBOutlet weak var tabSegment: UISegmentedControl!
    var index_segment = 0
    
    @IBOutlet weak var fldMatriks1_1_1: UITextField!
    @IBOutlet weak var fldMatriks1_1_2: UITextField!

    @IBOutlet weak var fldMatriks1_2_1: UITextField!
    @IBOutlet weak var fldMatriks1_2_2: UITextField!

    
    @IBOutlet weak var btnCalculate: UIButton!
    
    var mat1_1_1:Double = 0
    var mat1_1_2:Double = 0
    var mat1_1_3:Double = 0
    
    var mat1_2_1:Double = 0
    var mat1_2_2:Double = 0
    var mat1_2_3:Double = 0
    
    var mat1_3_1:Double = 0
    var mat1_3_2:Double = 0
    var mat1_3_3:Double = 0
    
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
        
    }
    

    func setupMatriksField(){
        
        if (index_segment == 0){
            
            //matriks 1
            fldMatriks1_1_1.isHidden = false
            fldMatriks1_1_2.isHidden = false

            fldMatriks1_2_1.isHidden = false
            fldMatriks1_2_2.isHidden = false

                    }else if(index_segment == 1){
            
            //matriks 1
            fldMatriks1_1_1.isHidden = false
            fldMatriks1_1_2.isHidden = false

            fldMatriks1_2_1.isHidden = false
            fldMatriks1_2_2.isHidden = false
                        
        }else{
            
            //matriks 1
            fldMatriks1_1_1.isHidden = false
            fldMatriks1_1_2.isHidden = false

            fldMatriks1_2_1.isHidden = false
            fldMatriks1_2_2.isHidden = false

        }
    }
    
    @IBAction func doCalculate(_ sender: Any) {
        getMatriks()
                
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let resultVC = storyBoard.instantiateViewController(withIdentifier: "InversResultViewController") as! InversResultViewController
        
        resultVC.mat1_1_1 = String(mat1_2_2)
        resultVC.mat1_1_2 = String(-mat1_1_2)
        resultVC.mat1_2_1 = String(-mat1_2_1)
        resultVC.mat1_2_2 = String(mat1_1_1)
        
        var det:Double = (mat1_1_1 * mat1_2_2) - (mat1_1_2 * mat1_2_1)
        resultVC.val1 = String(1)
        resultVC.val2 = String(det)
        
        resultVC.mat2_1_1 = String(mat1_2_2 / det)
        resultVC.mat2_1_2 = String(-mat1_1_2 / det)
        resultVC.mat2_2_1 = String(-mat1_2_1 / det)
        resultVC.mat2_2_2 = String(mat1_1_1 / det)


        self.present(resultVC, animated:true, completion:nil)
        
    }
    
    func getMatriks(){
        
         mat1_1_1 = fldMatriks1_1_1.text?.toDouble ?? 0
         mat1_1_2 = fldMatriks1_1_2.text?.toDouble ?? 0
        
         mat1_2_1 = fldMatriks1_2_1.text?.toDouble ?? 0
         mat1_2_2 = fldMatriks1_2_2.text?.toDouble ?? 0
        
    }

    

}

