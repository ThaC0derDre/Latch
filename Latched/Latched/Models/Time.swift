//
//  Task.swift
//  Latched
//
//  Created by Andres Gutierrez on 3/2/22.
//

import Foundation
import RealmSwift

class Time: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var lastFed      = ""
    @Persisted var duration     = ""
    @Persisted var currentDate  = ""
}
