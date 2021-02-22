//
//  ApiManager.swift
//  arduino
//
//  Created by Filippo Valle on 10/06/17.
//  Copyright © 2017 Filippo Valle. All rights reserved.
//
import Foundation
import Cocoa

class ApiManager: NSObject {
    
    var url:String!
    var urlAsURL:URL!
    var task:URLSessionDataTask!
    var result:[String:Any]
    var resultString:String?
    var wasCalled:Bool
    
    override init() {
        self.url = ""
        self.urlAsURL=URL(string: url)
        self.wasCalled=false
        self.resultString=""
        self.result=[:]
    }
    
    init(url:String) {
        self.url = url
        self.urlAsURL=URL(string: url)
        self.wasCalled=false
        self.resultString=""
        self.result=[:]
    }
    
    func Call(method:String){
        wasCalled=true
        urlAsURL = URL(string:(url+method))
        
        //_ = URLRequest(url: urlToCall!)
        //print(url)
                
        self.task = URLSession.shared.dataTask(with: urlAsURL! as URL){(data, response, error) in
            
            // check for any errors
            guard error == nil else {
                print("error calling GET")
                print(error!)
                return
            }
            // make sure we got data
            guard data != nil else {
                print("Error: did not receive data")
                return
            }
        }
        task.resume();
    }
    
    func FillNSTextFieldWithKey(key: String, field:NSTextField){
        wasCalled=true
        
        self.task = URLSession.shared.dataTask(with: urlAsURL! as URL){(data, response, error) in
            
            // check for any errors
            guard error == nil else {
                print("error calling GET")
                print(error!)
                return
            }
            // make sure we got data
            guard let responseData = data else {
                print("Error: did not receive data")
                return
            }
            // parse the result as JSON, since that's what the API provides
            do {
                guard let todo = try JSONSerialization.jsonObject(with: responseData, options: [])
                    as? [String: Any] else {
                        print("error trying to convert data to JSON")
                        return
                }
                     
                self.result = todo
                guard let toReturn = self.result[key] as? String else {
                    print("Could not get \(key) from JSON")
                    return
                }
            
                field.stringValue = "Version "+toReturn+" is available"
                self.resultString = toReturn as String
                                
            } catch  {
                print("Error trying to convert data to JSON")
            }
        }
        task.resume();
    }
    
    func GetLastCallData()->String{
        if(!self.wasCalled){
            return ""
        }
        return self.resultString ?? ""
    }
    
    
}
