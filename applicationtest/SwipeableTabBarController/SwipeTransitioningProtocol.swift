//
//  SwipeTransitioningProtocol.swift
//  applicationtest
//
//  Created by Nihel Zerria on 12/03/2019.
//  Copyright © 2019 Nihel Zerria. All rights reserved.
//

import Foundation
import UIKit

/// TODO (marcosgriselli): - Support Obj-c

/// Added to support custom `UIViewControllerAnimatedTransitioning` in different applications.
public protocol SwipeTransitioningProtocol: UIViewControllerAnimatedTransitioning {
    
    /// Direction in which the animation will occur.
    var targetEdge: UIRectEdge { get set }
    
    /// Animation type used.
    var animationType: SwipeAnimationTypeProtocol { get set }
}
