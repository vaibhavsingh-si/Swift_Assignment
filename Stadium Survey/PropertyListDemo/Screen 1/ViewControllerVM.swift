//
//  ViewControllerVM.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import Foundation

class ViewControllerVM {
    //MARK: - Variables
    var text        : String        = ""
    var email       : String        = ""
    var phone       : String        = ""
    var decimal     : Double        = 0.0
    var event       : Date          = Date.now
    var comfort     : String        = ""
    var safety      : String        = ""
    var security    : String        = ""
    
    //MARK: - Functions
    func save() {
        DataModelController.shared.save(newInfo: Info(text      : self.text,
                                                      email     : self.email,
                                                      phone     : self.phone,
                                                      decimal   : self.decimal,
                                                      eventDate : self.event,
                                                      comfort   : self.comfort,
                                                      safety    : self.safety,
                                                      security  : self.security))
    }
}
