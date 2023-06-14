//
//  Delegates.swift
//  DataFlow
//
//  Created by Анатолий Фетелеу on 06.04.2023.
//

import Foundation


protocol ButtonSelectionDelegate: AnyObject {
    
    func didSelectButtonWith(_ label: String)
    
}
