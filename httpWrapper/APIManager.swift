//
//  APIManager.swift
//  Remedio
//
//  Created by Apple on 23/03/18.
//  Copyright © 2018 Atees. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire
import KVLoading
import Toaster
import Reachability

// import pods
//
//class APIManager: NSObject {
//
//    static let sharedInstance = APIManager()
//
//
//    final class func request(_ strURL : String,method:HTTPMethod, params : [String : String]?, headers : [String : String]?,isLoadingEnabled:Bool ,success:@escaping (JSON) -> Void, failure:@escaping (Error?) -> Void){
//
//        isLoadingEnabled == true ?   KVLoading.show() : KVLoading.hide()
//        let reachability = Reachability()!
//
//        do {
//            try reachability.startNotifier()
//        } catch {
//            print("Unable to start notifier")
//        }
//
//
//        reachability.whenReachable = { reachability in
//
//
//            if reachability.connection == .wifi {
//                print("Reachable via WiFi")
//            } else {
//                print("Reachable via Cellular")
//            }
//
//            reachability.stopNotifier()
//
//            Alamofire.request(strURL, method: method, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
//
//                print(responseObject)
//                let statusCode = responseObject.response?.statusCode
//
//                print("==status code==>",statusCode ?? "no value")
//
//                if let status = statusCode
//                {
//                    let str = String(describing: status).getStatus()
//                    Toast(text: str).show()
//                }
//
//                if responseObject.result.isSuccess {
//                    KVLoading.hide()
//                    let resJson = JSON(responseObject.result.value!)
//                    success(resJson)
//                }
//
//                if responseObject.result.isFailure {
//                    KVLoading.hide()
//                    let error : Error = responseObject.result.error!
//                    failure(error)
//                }
//            }
//
//        }
//
//        reachability.whenUnreachable = { _ in
//            reachability.stopNotifier()
//            print("Not reachable")
//            KVLoading.hide()
//            failure(nil)
//
//        }
//
//
//
//
//    }
//
//}
//
