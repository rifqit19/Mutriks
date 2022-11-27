//
//  SecondViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 19/11/22.
//

import UIKit

class TransposeViewController: UIViewController {
    
    @IBOutlet weak var tabSegment: UISegmentedControl!
    var index_segment = 0
    
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
        // Do any additional setup after loading the view.
        setupView()
        setupMatriksField()
    }
    
    func setupView(){

        //Initialized

        //TabSegment
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .selected)
        
    }

    
    @IBAction func tabSegment(_ sender: UISegmentedControl) {
        index_segment = sender.selectedSegmentIndex
        print ("index: ", index_segment)
        setupMatriksField()
        
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
    
    @IBAction func doCalculate(_ sender: Any) {
        getMatriks()
                
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let resultVC = storyBoard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        resultVC.index_segment = index_segment
        
        resultVC.mat1_1_1 = String(mat1_1_1)
        resultVC.mat1_1_2 = String(mat1_2_1)
        resultVC.mat1_1_3 = String(mat1_3_1)
        resultVC.mat1_1_4 = String(mat1_4_1)

        resultVC.mat1_2_1 = String(mat1_1_2)
        resultVC.mat1_2_2 = String(mat1_2_2)
        resultVC.mat1_2_3 = String(mat1_3_2)
        resultVC.mat1_2_4 = String(mat1_4_2)
        
        resultVC.mat1_3_1 = String(mat1_1_3)
        resultVC.mat1_3_2 = String(mat1_2_3)
        resultVC.mat1_3_3 = String(mat1_3_3)
        resultVC.mat1_3_4 = String(mat1_4_3)
        
        resultVC.mat1_4_1 = String(mat1_1_4)
        resultVC.mat1_4_2 = String(mat1_2_4)
        resultVC.mat1_4_3 = String(mat1_3_4)
        resultVC.mat1_4_4 = String(mat1_4_4)

        
        self.present(resultVC, animated:true, completion:nil)
        
    }
    
    func getMatriks(){
        
         mat1_1_1 = fldMatriks1_1_1.text?.toDouble ?? 0
         mat1_1_2 = fldMatriks1_1_2.text?.toDouble ?? 0
         mat1_1_3 = fldMatriks1_1_3.text?.toDouble ?? 0
         mat1_1_4 = fldMatriks1_1_4.text?.toDouble ?? 0
        
         mat1_2_1 = fldMatriks1_2_1.text?.toDouble ?? 0
         mat1_2_2 = fldMatriks1_2_2.text?.toDouble ?? 0
         mat1_2_3 = fldMatriks1_2_3.text?.toDouble ?? 0
         mat1_2_4 = fldMatriks1_2_4.text?.toDouble ?? 0
        
         mat1_3_1 = fldMatriks1_3_1.text?.toDouble ?? 0
         mat1_3_2 = fldMatriks1_3_2.text?.toDouble ?? 0
         mat1_3_3 = fldMatriks1_3_3.text?.toDouble ?? 0
         mat1_3_4 = fldMatriks1_3_4.text?.toDouble ?? 0
       
         mat1_4_1 = fldMatriks1_4_1.text?.toDouble ?? 0
         mat1_4_2 = fldMatriks1_4_2.text?.toDouble ?? 0
         mat1_4_3 = fldMatriks1_4_3.text?.toDouble ?? 0
         mat1_4_4 = fldMatriks1_4_4.text?.toDouble ?? 0
       
    }

}

