//
//  AboutMatriksViewController.swift
//  Mutriks
//
//  Created by rifqitriginandri on 27/11/22.
//

import Foundation
import UIKit
import PDFKit

class AboutMatriksViewController: UIViewController {
    
    @IBOutlet weak var vwPdf: UIView!
    @IBOutlet weak var btnUp: UIButton!
    
    let pdfView = PDFView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let pdfView = PDFView(frame: vwPdf.bounds)
//        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        vwPdf.addSubview(pdfView)
        
        pdfView.autoScales = true
        
        let fileURL = Bundle.main.url(forResource: "MATRIKS", withExtension: "pdf")
        pdfView.document = PDFDocument(url: fileURL!)
        


    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewDidLoad()
    }
    
    @IBAction func doUp(_ sender: Any) {
        viewDidLoad()
    }
}
