//
//  GameObject.swift
//  ARcade
//

//  Created by Webb, Christopher Jacob on 11/17/18.

//  Copyright © 2018 University of Houston-Clear lake (ARGuys). All rights reserved.
//

import Foundation
import SceneKit
import ARKit

class GameObject {
    
    var location: Coordinate3D
    var anchor: ARAnchor
    var node: SCNNode

    init(location: Coordinate3D, anchor: ARAnchor, node: SCNNode) {
        self.location = location
        self.anchor = anchor
        self.node = node
    }
}