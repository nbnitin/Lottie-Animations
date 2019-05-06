//
//  ViewController.swift
//  Lottie Animation
//
//  Created by Nitin Bhatia on 06/05/19.
//  Copyright © 2019 Nitin Bhatia. All rights reserved.
//

import UIKit
import Lottie
class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        showSuccess()
    }
    
    func showSuccess(){
        
        //DispatchQueue.main.async { () -> Void in
      
        
        
        if let x = self.view.viewWithTag(9999){
            
            x.removeFromSuperview()
        }
        
        if let x = self.view.viewWithTag(8888){
            
            x.removeFromSuperview()
        }
        
        
        var vi : UIView? = UIView(frame:CGRect(x:0,y:0,width:120,height:120))
        vi?.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.6)
        vi?.layer.cornerRadius = 10
        vi?.center = ((self.view.center))
        self.view.addSubview((vi)!)
        let animationView = AnimationView(name: "data 3")
        animationView.frame = CGRect(x:0,y:0,width:100,height:100)
        animationView.center = ((self.view.center))
        animationView.clipsToBounds = true
       // animationView.loopMode = .loop
        animationView.animationSpeed = 0.5
        // animationView.contentMode = .scaleAspectFill
        animationView.tag = 9999
        vi?.tag = 8888
        
        self.view.addSubview(animationView)
        
        
        animationView.play { (finished)->Void in
            if (finished){
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(0), execute: { () -> Void in
                    UIView.animate(withDuration: 0, delay: 0, options: UIView.AnimationOptions.curveEaseOut, animations: {
                        vi?.alpha = 0.0
                        vi?.removeFromSuperview()
                        vi = nil
                        animationView.removeFromSuperview()
                        
                    })
                })
            }
            
            
        }
        
        //        var vi :UIView? = UIView(frame:CGRect(x:0,y:0,width:100,height:100))
        //        vi?.backgroundColor = UIColor.red
        //        vi?.tag = 9999
        //        app.window?.addSubview((vi)!)
        //        vi?.alpha = 1
        //    //vi.addSubview(animationView)
        //
        //            // Applying UIView animation
        //            let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        //        vi?.transform = minimizeTransform
        //            UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
        //                vi?.transform = CGAffineTransform.identity
        //                self.count += 1
        //            }, completion:{ _ in
        //                vi?.removeFromSuperview()
        //                print("by bye \(self.count)")
        //                vi?.alpha = 0
        //                vi = nil
        //            })
        //                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(0), execute: { () -> Void in
        //                    UIView.animate(withDuration: 0, delay: 0, options: UIView.AnimationOptions.curveEaseOut, animations: {
        //                        vi.alpha = 0.0
        //
        //                    })
        //                })
        // }
        // }
    }

    func showSuccessWithAppDelegate(){
        
        
        
        
        //DispatchQueue.main.async { () -> Void in
        let app : AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        
        if let x = app.window?.viewWithTag(9999){
            
            x.removeFromSuperview()
        }
        
        if let x = app.window?.viewWithTag(8888){
            
            x.removeFromSuperview()
        }
        
        
        var vi : UIView? = UIView(frame:CGRect(x:0,y:0,width:120,height:120))
        vi?.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.6)
        vi?.layer.cornerRadius = 10
        vi?.center = ((app.window?.center)!)
        app.window?.addSubview((vi)!)
        let animationView = AnimationView(name: "433-checked-done")
        animationView.frame = CGRect(x:0,y:0,width:100,height:100)
        animationView.center = ((app.window?.center)!)
        animationView.clipsToBounds = true
        
        // animationView.contentMode = .scaleAspectFill
        animationView.tag = 9999
        vi?.tag = 8888
        
        app.window?.addSubview(animationView)
        
        
        animationView.play { (finished)->Void in
            if (finished){
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(0), execute: { () -> Void in
                    UIView.animate(withDuration: 0, delay: 0, options: UIView.AnimationOptions.curveEaseOut, animations: {
                        vi?.alpha = 0.0
                        vi?.removeFromSuperview()
                        vi = nil
                        animationView.removeFromSuperview()
                        
                    })
                })
            }
            
            
        }
        
        //        var vi :UIView? = UIView(frame:CGRect(x:0,y:0,width:100,height:100))
        //        vi?.backgroundColor = UIColor.red
        //        vi?.tag = 9999
        //        app.window?.addSubview((vi)!)
        //        vi?.alpha = 1
        //    //vi.addSubview(animationView)
        //
        //            // Applying UIView animation
        //            let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        //        vi?.transform = minimizeTransform
        //            UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
        //                vi?.transform = CGAffineTransform.identity
        //                self.count += 1
        //            }, completion:{ _ in
        //                vi?.removeFromSuperview()
        //                print("by bye \(self.count)")
        //                vi?.alpha = 0
        //                vi = nil
        //            })
        //                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(0), execute: { () -> Void in
        //                    UIView.animate(withDuration: 0, delay: 0, options: UIView.AnimationOptions.curveEaseOut, animations: {
        //                        vi.alpha = 0.0
        //
        //                    })
        //                })
        // }
        // }
    }
    

}

