//
//  SoundSource.swift
//  SFMLPackageDescription
//
//  Created by Josef Zoller on 04.03.19.
//

import Foundation
import CSFML

public protocol SoundSource {
    public enum Status {
        case stopped, paused, playing
    }
    
    public var status: Status { get }
    
    public init()
    
    public var pitch: Float { get set }
    public var volume: Float { get set }
}
