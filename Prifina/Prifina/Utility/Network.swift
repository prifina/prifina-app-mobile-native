//
//  Network.swift
//  Prifina
//
//  Created by DW on 26/03/22.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()

  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://api-eu-west-2.graphcms.com/v2/ckzd3vyci1bp301z14b775t0o/master")!)
}
