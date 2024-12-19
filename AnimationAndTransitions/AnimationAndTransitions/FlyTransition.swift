//
//  FlyTransition.swift
//  AnimationAndTransitions
//
//  Created by Cesar Giupponi Paiva on 04/12/24.
//

import SwiftUI

extension AnyTransition {
    static var fly: AnyTransition {
        AnyTransition.modifier(active: FlyTransition(percent: 0), identity: FlyTransition(percent: 1))
    }
}

struct FlyTransition: GeometryEffect {
    
    var percent: Double
    
    var animatableData: Double {
        get { percent }
        set { percent = newValue }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        
        let rotationPercent = percent
        let angle = CGFloat(Angle(degrees: 90 * (1-rotationPercent)).radians)
        
        var transform3D = CATransform3DIdentity
        transform3D.m34 = -1/max(size.width, size.height)
        
        transform3D = CATransform3DRotate(transform3D, angle, 1, 0, 0)
        transform3D = CATransform3DTranslate(transform3D, -size.width/2.0, -size.height/2.0, 0)
        
        let affineTransform1 = ProjectionTransform(CGAffineTransform(translationX: size.width/2.0, y: size.height/2.0))
        let affineTransform2 = ProjectionTransform(CGAffineTransform(scaleX: CGFloat(percent * 2), y: CGFloat(percent * 2)))
        
        if percent <= 0.5 {
            return ProjectionTransform(transform3D).concatenating(affineTransform2).concatenating(affineTransform1)
        } else {
            return ProjectionTransform(transform3D).concatenating(affineTransform1)
        }
    }
}
