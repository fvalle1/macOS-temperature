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
    var task:URLSessionDataTask!
    var result:[String:Any]
    var resultString:String
    var wasCalled:Bool
    
    override init() {
        self.url = ""
        self.wasCalled=false
        self.resultString=""
        self.result=[:]
    }
    
    init(url:String) {
        self.url = url
        self.wasCalled=false
        self.resultString=""
        self.result=[:]
    }
    
    func Call(method:String, fieldToFill: NSTextField){
        wasCalled=true
        let urlToCall = URL(string:(url+method))
        
        _ = URLRequest(url: urlToCall!)
        //print(url)
                
        self.task = URLSession.shared.dataTask(with: urlToCall! as URL){(data, response, error) in
            
            // check for any errors
            guard error == nil else {
                print("error calling GET on /todos/1")
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
                
                
                self.result=todo
                self.resultString=todo.description
                
                fieldToFill.stringValue=todo.description
                
            } catch  {
                print("error trying to convert data to JSON")
            }
        }
        task.resume();
    }
    
    func GetLastCallData(key: String)->String{
        if(!self.wasCalled){
            return ""
        }
        
        guard let toReturn = self.result[key] as? String else {
            print("Could not get \(key) from JSON")
            return ""
        }
        
        print (toReturn)
        return toReturn
    }
    
    func GetLastCallData()->String{
        if(!self.wasCalled){
            return ""
        }
        return self.resultString
    }
    
    
}
