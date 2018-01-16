//
//  ViewController.swift
//  Downloading_Images_From_The_Web
//
//  Created by Charlie Cuddy on 1/16/18.
//  Copyright © 2018 Charlie Cuddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var memStadView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        if documentsPath.count > 0 {
            
            let documentsDirectory = documentsPath[0]
            
            let restorePath = documentsDirectory + "/husker.jpg"
            
            memStadView.image = UIImage(contentsOfFile: restorePath)
            
        }
/*
        let url = URL(string: "https://bloximages.newyork1.vip.townnews.com/omaha.com/content/tncms/assets/v3/editorial/2/46/24642594-72e4-11e7-a3dc-57dba17d4a35/597a0f44df375.image.jpg")!
        
        let request = NSMutableURLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            if error != nil {
                
                print(error)
                
            } else {
                
                if let data = data {
                    
                    if let memStad = UIImage(data: data) {
                        
                        self.memStadView.image = memStad
                        
                        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
                        
                        if documentsPath.count > 0 {
                            
                            let documentsDirectory = documentsPath[0]
                                
                                let savePath = documentsDirectory + "/husker.jpg"
                                
                                do {
                                    
                                    try UIImageJPEGRepresentation(memStad, 1)?.write(to: URL(fileURLWithPath: savePath))
                                    
                                } catch {
                                    
                                    print("Error saving image")
                                }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        task.resume()
*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

