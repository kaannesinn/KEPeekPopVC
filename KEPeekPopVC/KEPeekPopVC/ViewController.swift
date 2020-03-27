//
//  ViewController.swift
//  KEParallaxCollection
//
//  Created by Kaan Esin on 26.03.2020.
//  Copyright © 2020 Kaan Esin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func closeClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override var previewActionItems: [UIPreviewActionItem] {
        let prev1 = UIPreviewAction(title: "action 1", style: .default) { (action, vc) in
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                if let navc = UIApplication.shared.delegate?.window??.rootViewController as? UINavigationController {
                    let alert = UIAlertController(title: action.title, message: "default pressed", preferredStyle: .alert)
                    navc.present(alert, animated: true, completion: nil)
                }
            }
        }
        
        let prev2 = UIPreviewAction(title: "action 2", style: .destructive) { (action, vc) in
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                if let navc = UIApplication.shared.delegate?.window??.rootViewController as? UINavigationController {
                    let alert = UIAlertController(title: action.title, message: "destructive pressed", preferredStyle: .alert)
                    navc.present(alert, animated: true, completion: nil)
                }
            }
        }
        
        let prev3 = UIPreviewAction(title: "action 3", style: .selected) { (action, vc) in
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                if let navc = UIApplication.shared.delegate?.window??.rootViewController as? UINavigationController {
                    let alert = UIAlertController(title: action.title, message: "selected pressed", preferredStyle: .alert)
                    navc.present(alert, animated: true, completion: nil)
                }
            }
        }
        
        return [prev1, prev2, prev3]
    }
}

