//
//  HorizCenterThirdCalculation.swift
//  Rectangle
//
//  Created by Ryan Hanson on 7/26/19.
//  Copyright © 2019 Ryan Hanson. All rights reserved.
//

import Foundation

class CenterThirdCalculation: WindowCalculation {
    
    override func calculateRect(_ windowRect: CGRect, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> CGRect? {
        
        return isLandscape(visibleFrameOfScreen)
            ? horizontallyCenteredThird(visibleFrameOfScreen)
            : verticallyCenteredThird(visibleFrameOfScreen)
    }
    
    private func horizontallyCenteredThird(_ visibleFrameOfScreen: CGRect) -> CGRect {
        var centerThirdRect = visibleFrameOfScreen
        centerThirdRect.origin.x = visibleFrameOfScreen.minX + floor(visibleFrameOfScreen.width / 3.0)
        centerThirdRect.origin.y = visibleFrameOfScreen.minY
        centerThirdRect.size.width = visibleFrameOfScreen.width / 3.0
        centerThirdRect.size.height = visibleFrameOfScreen.height
        return centerThirdRect
    }
    
    private func verticallyCenteredThird(_ visibleFrameOfScreen: CGRect) -> CGRect {
        var centerThirdRect = visibleFrameOfScreen
        centerThirdRect.origin.x = visibleFrameOfScreen.minX
        centerThirdRect.origin.y = visibleFrameOfScreen.minY + floor(visibleFrameOfScreen.height / 3.0)
        centerThirdRect.size.width = visibleFrameOfScreen.width
        centerThirdRect.size.height = visibleFrameOfScreen.height / 3.0
        return centerThirdRect
    }
}

