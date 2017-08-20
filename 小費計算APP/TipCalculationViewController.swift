//
//  TipCalculationViewController.swift
//  小費計算APP
//
//  Created by Huang Hao on 2017/8/19.
//  Copyright © 2017年 Huang Hao. All rights reserved.
//

import UIKit

class TipCalculationViewController: UIViewController {
    
    @IBOutlet weak var PriceTextField: UITextField!
    @IBOutlet weak var TipTextField: UITextField!
    @IBOutlet weak var TotalTextField: UITextField!
    @IBOutlet weak var TipTotalTextField: UITextField!
    

    
    
    @IBAction func CalculateButton(_ sender: Any) {
        
        
        //計算及防閃退
        self.TotalTextField.endEditing(true)
        self.TipTotalTextField.endEditing(true)
        if PriceTextField.text == "" || TipTextField.text == ""{
            TotalTextField.text = "輸入錯誤，請輸入值"
            TipTotalTextField.text = "輸入錯誤，請輸入值"
        }else{
            let result = String(Int(PriceTextField.text!)! + Int(PriceTextField.text!)! * Int(TipTextField.text!)!/100)
            TotalTextField.text = "\(result)"
            let result2 = String(Int(PriceTextField.text!)! * Int(TipTextField.text!)!/100)
            TipTotalTextField.text = "\(result2)"
        }
        
        // 鍵盤出現收起
        PriceTextField.resignFirstResponder()
        TipTextField.resignFirstResponder()
        func keyborardtapin (_ textField: UITextField)->Bool{
            PriceTextField.resignFirstResponder()
            TipTextField.resignFirstResponder()
            return true
        }
        
        
    }

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
