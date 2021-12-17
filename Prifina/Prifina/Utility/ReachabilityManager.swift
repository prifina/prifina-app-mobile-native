//
//  ReachabilityManager.swift
//  Prifina
//
//  Created by Amit Sharma on 25/11/21.
//

import UIKit
import Reachability

enum ReachabilityStatus {
    case reachable, unreachable
}

class ReachabilityManager: NSObject {
    static let shared = ReachabilityManager()
    private var reachability: Reachability?
    private(set) var status: ReachabilityStatus = .unreachable
    
    private override init() {
        super.init()
        do {
            try reachability = Reachability.init()
            reachability?.whenReachable = {[weak self] reachability in
                if reachability.connection == .wifi {
                    debugPrint("Reachable via WiFi")
                } else {
                    debugPrint("Reachable via Cellular")
                }
                self?.status = .reachable
            }
            reachability?.whenUnreachable = {[weak self] _ in
                debugPrint("Not reachable")
                self?.status = .unreachable
            }
            try reachability?.startNotifier()
        } catch {
            debugPrint("Reachability failed!")
        }
    }
    
    deinit {
        reachability?.stopNotifier()
    }
}
