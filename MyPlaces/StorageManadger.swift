//
//  StorageManadger.swift
//  MyPlaces
//
//  Created by Кирилл Коновалов on 01.12.2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManenger {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
}
