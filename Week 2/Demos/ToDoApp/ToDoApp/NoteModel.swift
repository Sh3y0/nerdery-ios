//
//  NoteModel.swift
//  ToDoApp
//
//  Created by Eliseo on 5/12/22.
//

import Foundation

struct NoteModel: Codable {
    let id: String
    var isFavorite: Bool
    let description: String
    
    init(id: String = UUID().uuidString, isFavorite: Bool = false, description: String)
    {
        self.id = id
        self.isFavorite = isFavorite
        self.description = description
    }
}
