//
//  Info.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import Foundation

struct Info {
    var text            : String        = ""
    var email           : String        = ""
    var phone           : String        = ""
    var decimal         : Double        = 0.0
    var eventDate       : Date          = Date.now
    var comfort         : String        = ""
    var safety          : String        = ""
    var security        : String        = ""
}

extension Info : Codable {
    
}

extension Info : CustomStringConvertible {
    var description: String {
        """
        Info
        -----
        TEXT        :       \(self.text)
        EMAIL       :       \(self.email)
        PHONE       :       \(self.phone)
        DECIMAL     :       \(self.decimal)
        DATE        :       \(self.eventDate.description)
        COMFORT     :       \(self.comfort)
        SAFETY      :       \(self.safety)
        SECURITY    :       \(self.security)
        """
    }
}
