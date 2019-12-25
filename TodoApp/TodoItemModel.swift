//
//  TodoItemModel.swift
//  TodoApp
//
//  Created by Hiroto Yuba on 2019/12/25.
//  Copyright © 2019 Hiroto Yuba. All rights reserved.
//

import Foundation

struct TodoItemModel {
    
    var name: String
    
    var details: String
    
    var completionDate: Date
    
    var startDate: Date
    
    var isComplete: Bool
    
    init(name: String, details: String, completionDate:  Date) {
        self.name = name
        
        self.details = name
        
        self.completionDate = completionDate
        
        self.isComplete = false
        
        self.startDate =  Date()
        
    }
}
