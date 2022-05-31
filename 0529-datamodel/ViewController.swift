//
//  ViewController.swift
//  0529-datamodel
//
//  Created by admsup on 2016/5/29.
//  Copyright © 2016年 test. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var birTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnClik(sender: AnyObject) {
        //save
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext

        let entityDescription = NSEntityDescription.entityForName("User", inManagedObjectContext: context)
        let newUserData = User(entity:entityDescription!, insertIntoManagedObjectContext: context)
        
        newUserData.name = nameTxt.text!
        newUserData.birthday = birTxt.text!
        
        let e: NSError? = nil
        do {
            try context.save()
        } catch {
            print("insert error \(e!.localizedDescription)")
        }
        
        nameTxt.text = ""
        birTxt.text = ""
    }

}

