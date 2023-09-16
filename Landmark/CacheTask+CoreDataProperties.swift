//
//  CacheTask+CoreDataProperties.swift
//  Landmark
//
//  Created by Denny Arfansyah on 13/09/23.
//
//

import Foundation
import CoreData

extension CacheTask {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CacheTask> {
        return NSFetchRequest<CacheTask>(entityName: "CacheTask")
    }

    @NSManaged public var title: String?
    @NSManaged public var desc: String?
    @NSManaged public var createAt: Date?
    @NSManaged public var deadlineAt: Date?
    @NSManaged public var doneAt: Date?
    @NSManaged public var isActive: Bool

}

extension CacheTask : Identifiable {

}
