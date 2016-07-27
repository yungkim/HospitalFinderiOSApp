//
//  Hospital.swift
//  HospitalFinder
//
//  Created by Daniel Ra on 7/25/16.
//  Copyright © 2016 Daniel Ra. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Hospital: NSObject {
    
    var name: String = ""
    var id = Int()    
    var location = ""
    var phoneNumber = ""
    var website = ""
    var rating = 0.00
    var imageUrl:String?
    var image:UIImage?
        
    
// Insert code here to add functionality to your managed object subclass
    static func getAllHospitals(completionHandler: (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void) {
        // Specify the url that we will be sending the GET Request to
        let url = NSURL(string: "https://hospitalfinder.herokuapp.com/api/hospitals")
        // Create an NSURLSession to handle the request tasks
        let session = NSURLSession.sharedSession()
        // Create a "data task" which will request some data from a URL and then run the completion handler that we are passing into the getAllPeople function itself
        let task = session.dataTaskWithURL(url!, completionHandler: completionHandler)
        // Actually "execute" the task. This is the line that actually makes the request that we set up above
        task.resume()
    }

}
