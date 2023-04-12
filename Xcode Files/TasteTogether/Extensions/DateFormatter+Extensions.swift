//
//  DateFormatter+Extensions.swift
//  BeRealP2
//
//  Created by Omar Madjitov on 04/01/23.
//

import Foundation

extension DateFormatter {
    static var postFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
}
