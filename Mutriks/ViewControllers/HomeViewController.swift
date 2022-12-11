//
//  HomeViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 19/11/22.
//

import Foundation
import UIKit
import MessageUI


class HomeViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var btn_operatio: UIButton!
    @IBOutlet weak var view_menu: UIView!
    @IBOutlet weak var btn_transpose: UIButton!
    @IBOutlet weak var btn_determinan: UIButton!
    @IBOutlet weak var btn_invers: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    public func setupView(){
        
        view_menu.roundCorners(corners: [.topLeft,.topRight], radius: 20)
    

    }

    @IBAction func goOperation(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let operationVC = storyBoard.instantiateViewController(withIdentifier: "OperationViewController") as! OperationViewController
//        self.present(secondVC, animated:true, completion:nil)
        self.navigationItem.title = "+ - x"

        self.navigationController?.pushViewController(operationVC, animated: true)
        
    }
    
    @IBAction func goTranspose(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let transposeVC = storyBoard.instantiateViewController(withIdentifier: "TransposeViewController") as! TransposeViewController
        
        self.navigationItem.title = "Transpose"

        self.navigationController?.pushViewController(transposeVC, animated: true)
    }
    
    @IBAction func goDeterminan(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let determinanVC = storyBoard.instantiateViewController(withIdentifier: "DeterminanViewController") as! DeterminanViewController
        
        self.navigationItem.title = "Determinan"

        self.navigationController?.pushViewController(determinanVC, animated: true)

    }
    
    @IBAction func goInvers(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let inversVC = storyBoard.instantiateViewController(withIdentifier: "InversViewController") as! InversViewController
        
        self.navigationItem.title = "Invers"

        self.navigationController?.pushViewController(inversVC, animated: true)

    }
    
    @IBAction func goAbout(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let inversVC = storyBoard.instantiateViewController(withIdentifier: "AboutAppViewController") as! AboutAppViewController
        
        self.navigationItem.title = "Tentang Aplikasi"

        self.navigationController?.pushViewController(inversVC, animated: true)

    }
    
    
    @IBAction func goMatriks(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let inversVC = storyBoard.instantiateViewController(withIdentifier: "AboutMatriksViewController") as! AboutMatriksViewController
        
        self.navigationItem.title = "Tentang Matriks"

        self.navigationController?.pushViewController(inversVC, animated: true)

        
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }

    
    
    // Hide Topbar
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            navigationController?.setNavigationBarHidden(true, animated: animated)
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            navigationController?.setNavigationBarHidden(false, animated: animated)
        }
    
}
