//
//  SecondViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 19/11/22.
//

import UIKit

class OperationViewController: UIViewController {

    @IBOutlet weak var fldOperator: UITextField!
    @IBOutlet weak var tabSegment: UISegmentedControl!
    
    var index_segment = 0
    var index_operator = 0

    var operatorSign:[String] = ["+","-","x"]
    
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

    
    @IBOutlet weak var fldMatriks2_1_1: UITextField!
    @IBOutlet weak var fldMatriks2_1_2: UITextField!
    @IBOutlet weak var fldMatriks2_1_3: UITextField!
    @IBOutlet weak var fldMatriks2_1_4: UITextField!

    @IBOutlet weak var fldMatriks2_2_1: UITextField!
    @IBOutlet weak var fldMatriks2_2_2: UITextField!
    @IBOutlet weak var fldMatriks2_2_3: UITextField!
    @IBOutlet weak var fldMatriks2_2_4: UITextField!

    
    @IBOutlet weak var fldMatriks2_3_1: UITextField!
    @IBOutlet weak var fldMatriks2_3_2: UITextField!
    @IBOutlet weak var fldMatriks2_3_3: UITextField!
    @IBOutlet weak var fldMatriks2_3_4: UITextField!

    
    @IBOutlet weak var fldMatriks2_4_1: UITextField!
    @IBOutlet weak var fldMatriks2_4_2: UITextField!
    @IBOutlet weak var fldMatriks2_4_3: UITextField!
    @IBOutlet weak var fldMatriks2_4_4: UITextField!
    
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

    var mat2_1_1:Double = 0
    var mat2_1_2:Double = 0
    var mat2_1_3:Double = 0
    var mat2_1_4:Double = 0
    
    var mat2_2_1:Double = 0
    var mat2_2_2:Double = 0
    var mat2_2_3:Double = 0
    var mat2_2_4:Double = 0
    
    var mat2_3_1:Double = 0
    var mat2_3_2:Double = 0
    var mat2_3_3:Double = 0
    var mat2_3_4:Double = 0

    var mat2_4_1:Double = 0
    var mat2_4_2:Double = 0
    var mat2_4_3:Double = 0
    var mat2_4_4:Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupView()
        
        print ("index: ", index_segment)

        setupMatriksField()

    }
    
    func setupView(){

        //Initialized
        let picker = PickerField(textField: fldOperator)

        //TabSegment
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .selected)
        
        //PickerField
        picker.setPicker(data: (operatorSign)) { [weak self] (text, index) in
            self?.index_operator = index
            print("operator: " , self!.index_operator)

        }
        
        picker.selectPicker(index: 0)
        
        print("operator: " , self.index_operator)

        
    }
    
    @IBAction func tabSegment(_ sender: UISegmentedControl) {
        index_segment = sender.selectedSegmentIndex
        print ("index: ", index_segment)
        setupMatriksField()
        
    }
    
    @IBAction func doCalculate(_ sender: Any) {
        getMatriks()
                
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let resultVC = storyBoard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        resultVC.index_segment = index_segment
        
        if (index_operator == 0){
            resultVC.mat1_1_1 = String(mat1_1_1 + mat2_1_1)
            resultVC.mat1_1_2 = String(mat1_1_2 + mat2_1_2)
            resultVC.mat1_1_3 = String(mat1_1_3 + mat2_1_3)
            resultVC.mat1_1_4 = String(mat1_1_4 + mat2_1_4)

            resultVC.mat1_2_1 = String(mat1_2_1 + mat2_2_1)
            resultVC.mat1_2_2 = String(mat1_2_2 + mat2_2_2)
            resultVC.mat1_2_3 = String(mat1_2_3 + mat2_2_3)
            resultVC.mat1_2_4 = String(mat1_2_4 + mat2_2_4)
            
            resultVC.mat1_3_1 = String(mat1_3_1 + mat2_3_1)
            resultVC.mat1_3_2 = String(mat1_3_2 + mat2_3_2)
            resultVC.mat1_3_3 = String(mat1_3_3 + mat2_3_3)
            resultVC.mat1_3_4 = String(mat1_3_4 + mat2_3_4)
            
            resultVC.mat1_4_1 = String(mat1_4_1 + mat2_4_1)
            resultVC.mat1_4_2 = String(mat1_4_2 + mat2_4_2)
            resultVC.mat1_4_3 = String(mat1_4_3 + mat2_4_3)
            resultVC.mat1_4_4 = String(mat1_4_4 + mat2_4_4)


        }else if (index_operator == 1){
            resultVC.mat1_1_1 = String(mat1_1_1 - mat2_1_1)
            resultVC.mat1_1_2 = String(mat1_1_2 - mat2_1_2)
            resultVC.mat1_1_3 = String(mat1_1_3 - mat2_1_3)
            resultVC.mat1_1_4 = String(mat1_1_4 - mat2_1_4)

            resultVC.mat1_2_1 = String(mat1_2_1 - mat2_2_1)
            resultVC.mat1_2_2 = String(mat1_2_2 - mat2_2_2)
            resultVC.mat1_2_3 = String(mat1_2_3 - mat2_2_3)
            resultVC.mat1_2_4 = String(mat1_2_4 - mat2_2_4)
            
            resultVC.mat1_3_1 = String(mat1_3_1 - mat2_3_1)
            resultVC.mat1_3_2 = String(mat1_3_2 - mat2_3_2)
            resultVC.mat1_3_3 = String(mat1_3_3 - mat2_3_3)
            resultVC.mat1_3_4 = String(mat1_3_4 - mat2_3_4)
            
            resultVC.mat1_4_1 = String(mat1_4_1 - mat2_4_1)
            resultVC.mat1_4_2 = String(mat1_4_2 - mat2_4_2)
            resultVC.mat1_4_3 = String(mat1_4_3 - mat2_4_3)
            resultVC.mat1_4_4 = String(mat1_4_4 - mat2_4_4)

        }else if (index_operator == 2){
            resultVC.mat1_1_1 = String((mat1_1_1*mat2_1_1) + (mat1_1_2*mat2_2_1) + (mat1_1_3*mat2_3_1) + (mat1_1_4*mat2_4_1))
            resultVC.mat1_1_2 = String((mat1_1_1*mat2_1_2) + (mat1_1_2*mat2_2_2) + (mat1_1_3*mat2_3_2) + (mat1_1_4*mat2_4_2))
            resultVC.mat1_1_3 = String((mat1_1_1*mat2_1_3) + (mat1_1_2*mat2_2_3) + (mat1_1_3*mat2_3_3) + (mat1_1_4*mat2_4_3))
            resultVC.mat1_1_4 = String((mat1_1_1*mat2_1_4) + (mat1_1_2*mat2_2_4) + (mat1_1_3*mat2_3_4) + (mat1_1_4*mat2_4_4))

            resultVC.mat1_2_1 = String((mat1_2_1*mat2_1_1) + (mat1_2_2*mat2_2_1) + (mat1_2_3*mat2_3_1) + (mat1_2_4*mat2_4_1))
            resultVC.mat1_2_2 = String((mat1_2_1*mat2_1_2) + (mat1_2_2*mat2_2_2) + (mat1_2_3*mat2_3_2) + (mat1_2_4*mat2_4_2))
            resultVC.mat1_2_3 = String((mat1_2_1*mat2_1_3) + (mat1_2_2*mat2_2_3) + (mat1_2_3*mat2_3_3) + (mat1_2_4*mat2_4_3))
            resultVC.mat1_2_4 = String((mat1_2_1*mat2_1_4) + (mat1_2_2*mat2_2_4) + (mat1_2_3*mat2_3_4) + (mat1_2_4*mat2_4_4))
            
            resultVC.mat1_3_1 = String((mat1_3_1*mat2_1_1) + (mat1_3_2*mat2_2_1) + (mat1_3_3*mat2_3_1) + (mat1_3_4*mat2_4_1))
            resultVC.mat1_3_2 = String((mat1_3_1*mat2_1_2) + (mat1_3_2*mat2_2_2) + (mat1_3_3*mat2_3_2) + (mat1_3_4*mat2_4_2))
            resultVC.mat1_3_3 = String((mat1_3_1*mat2_1_3) + (mat1_3_2*mat2_2_3) + (mat1_3_3*mat2_3_3) + (mat1_3_4*mat2_4_3))
            resultVC.mat1_3_4 = String((mat1_3_1*mat2_1_4) + (mat1_3_2*mat2_2_4) + (mat1_3_3*mat2_3_4) + (mat1_3_4*mat2_4_4))
            
            resultVC.mat1_4_1 = String((mat1_4_1*mat2_1_1) + (mat1_4_2*mat2_2_1) + (mat1_4_3*mat2_3_1) + (mat1_4_4*mat2_4_1))
            resultVC.mat1_4_2 = String((mat1_4_1*mat2_1_2) + (mat1_4_2*mat2_2_2) + (mat1_4_3*mat2_3_2) + (mat1_4_4*mat2_4_2))
            resultVC.mat1_4_3 = String((mat1_4_1*mat2_1_3) + (mat1_4_2*mat2_2_3) + (mat1_4_3*mat2_3_3) + (mat1_4_4*mat2_4_3))
            resultVC.mat1_4_4 = String((mat1_4_1*mat2_1_4) + (mat1_4_2*mat2_2_4) + (mat1_4_3*mat2_3_4) + (mat1_4_4*mat2_4_4))

        }
        
        
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
       
        
         mat2_1_1 = fldMatriks2_1_1.text?.toDouble ?? 0
         mat2_1_2 = fldMatriks2_1_2.text?.toDouble ?? 0
         mat2_1_3 = fldMatriks2_1_3.text?.toDouble ?? 0
         mat2_1_4 = fldMatriks2_1_4.text?.toDouble ?? 0
        
         mat2_2_1 = fldMatriks2_2_1.text?.toDouble ?? 0
         mat2_2_2 = fldMatriks2_2_2.text?.toDouble ?? 0
         mat2_2_3 = fldMatriks2_2_3.text?.toDouble ?? 0
         mat2_2_4 = fldMatriks2_2_4.text?.toDouble ?? 0
        
         mat2_3_1 = fldMatriks2_3_1.text?.toDouble ?? 0
         mat2_3_2 = fldMatriks2_3_2.text?.toDouble ?? 0
         mat2_3_3 = fldMatriks2_3_3.text?.toDouble ?? 0
         mat2_3_4 = fldMatriks2_3_4.text?.toDouble ?? 0
        
         mat2_4_1 = fldMatriks2_4_1.text?.toDouble ?? 0
         mat2_4_2 = fldMatriks2_4_2.text?.toDouble ?? 0
         mat2_4_3 = fldMatriks2_4_3.text?.toDouble ?? 0
         mat2_4_4 = fldMatriks2_4_4.text?.toDouble ?? 0
        

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

            //matriks 2
            fldMatriks2_1_1.isHidden = false
            fldMatriks2_1_2.isHidden = false
            fldMatriks2_1_3.isHidden = true
            fldMatriks2_1_4.isHidden = true

            fldMatriks2_2_1.isHidden = false
            fldMatriks2_2_2.isHidden = false
            fldMatriks2_2_3.isHidden = true
            fldMatriks2_2_4.isHidden = true

            fldMatriks2_3_1.isHidden = true
            fldMatriks2_3_2.isHidden = true
            fldMatriks2_3_3.isHidden = true
            fldMatriks2_3_4.isHidden = true

            fldMatriks2_4_1.isHidden = true
            fldMatriks2_4_2.isHidden = true
            fldMatriks2_4_3.isHidden = true
            fldMatriks2_4_4.isHidden = true

            
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

            //matriks 2
            fldMatriks2_1_1.isHidden = false
            fldMatriks2_1_2.isHidden = false
            fldMatriks2_1_3.isHidden = false
            fldMatriks2_1_4.isHidden = true

            fldMatriks2_2_1.isHidden = false
            fldMatriks2_2_2.isHidden = false
            fldMatriks2_2_3.isHidden = false
            fldMatriks2_2_4.isHidden = true

            fldMatriks2_3_1.isHidden = false
            fldMatriks2_3_2.isHidden = false
            fldMatriks2_3_3.isHidden = false
            fldMatriks2_3_4.isHidden = true

            fldMatriks2_4_1.isHidden = true
            fldMatriks2_4_2.isHidden = true
            fldMatriks2_4_3.isHidden = true
            fldMatriks2_4_4.isHidden = true
            
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

            //matriks 2
            fldMatriks2_1_1.isHidden = false
            fldMatriks2_1_2.isHidden = false
            fldMatriks2_1_3.isHidden = false
            fldMatriks2_1_4.isHidden = false

            fldMatriks2_2_1.isHidden = false
            fldMatriks2_2_2.isHidden = false
            fldMatriks2_2_3.isHidden = false
            fldMatriks2_2_4.isHidden = false

            fldMatriks2_3_1.isHidden = false
            fldMatriks2_3_2.isHidden = false
            fldMatriks2_3_3.isHidden = false
            fldMatriks2_3_4.isHidden = false

            fldMatriks2_4_1.isHidden = false
            fldMatriks2_4_2.isHidden = false
            fldMatriks2_4_3.isHidden = false
            fldMatriks2_4_4.isHidden = false
            
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

            //matriks 2
            fldMatriks2_1_1.isHidden = false
            fldMatriks2_1_2.isHidden = false
            fldMatriks2_1_3.isHidden = false
            fldMatriks2_1_4.isHidden = false

            fldMatriks2_2_1.isHidden = false
            fldMatriks2_2_2.isHidden = false
            fldMatriks2_2_3.isHidden = false
            fldMatriks2_2_4.isHidden = false

            fldMatriks2_3_1.isHidden = false
            fldMatriks2_3_2.isHidden = false
            fldMatriks2_3_3.isHidden = false
            fldMatriks2_3_4.isHidden = false

            fldMatriks2_4_1.isHidden = false
            fldMatriks2_4_2.isHidden = false
            fldMatriks2_4_3.isHidden = false
            fldMatriks2_4_4.isHidden = false
        }
    }
    

}

