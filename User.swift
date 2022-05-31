//
//  User.swift
//  0529-datamodel
//
//  Created by admsup on 2016/5/29.
//  Copyright © 2016年 test. All rights reserved.
//

import UIKit
import CoreData

@objc(User)
class User: NSManagedObject {

    @NSManaged var name: String
    @NSManaged var birthday: String
}
