//
//  Sequence.swift
//  Prifina
//
//  Created by DW on 29/03/22.
//

import Foundation

extension Sequence {
    func asyncForEach(
        _ operation: (Element) async throws -> Void
    ) async rethrows {
        for element in self {
            try await operation(element)
        }
    }
}
