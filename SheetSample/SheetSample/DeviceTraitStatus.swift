//
//  DeviceTraitStatus.swift
//  SheetSample
//
//  Created by 藤治仁 on 2023/10/28.
//

import SwiftUI

enum DeviceTraitStatus {
    ///iPadの縦向き・横向き
    case wRhR
    ///iPhoneの縦向き
    case wChR
    ///大きいiPhone（Plus / Max / XR and 11など）の横向き
    case wRhC
    ///iPhoneの横向き
    case wChC

    init(hSizeClass: UserInterfaceSizeClass?, vSizeClass: UserInterfaceSizeClass?) {

        switch (hSizeClass, vSizeClass) {
        case (.regular, .regular):
            self = .wRhR
        case (.compact, .regular):
            self = .wChR
        case (.regular, .compact):
            self = .wRhC
        case (.compact, .compact):
            self = .wChC
        default:
            self = .wChR
        }
    }
}
