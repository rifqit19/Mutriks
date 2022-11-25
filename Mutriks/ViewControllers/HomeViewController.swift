//
//  HomeViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 19/11/22.
//

import Foundation
import UIKit


class HomeViewController: UIViewController {

    @IBOutlet weak var btn_test: UIButton!
    @IBOutlet weak var view_menu: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupView()
    }
    
    public func setupView(){
        
        view_menu.roundCorners(corners: [.topLeft,.topRight], radius: 20)
    

    }

    @IBAction func testButtonTap(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let secondVC = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
//        self.present(secondVC, animated:true, completion:nil)
        
        self.navigationController?.pushViewController(secondVC, animated: true)
        

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
