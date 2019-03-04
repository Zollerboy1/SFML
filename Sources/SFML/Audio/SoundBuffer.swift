//
//  SoundBuffer.swift
//  SFML
//
//  Created by Josef Zoller on 04.03.19.
//

import Foundation
import CSFML

public class SoundBuffer {
    var pointer: OpaquePointer
    
    public init(file: String) {
        self.pointer = sfSoundBuffer_createFromFile(file)
    }
    
    deinit {
        sfSoundBuffer_destroy(self.pointer)
    }
}
