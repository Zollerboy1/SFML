//
//  Sound.swift
//  SFML
//
//  Created by Josef Zoller on 04.03.19.
//

import Foundation
import CSFML

class Sound: SoundSource {
    var pointer: OpaquePointer
    
    var loop: Bool {
        get {
            return sfSound_getLoop(self.pointer) == 1
        } set {
            sfSound_setLoop(self.pointer, newValue ? 1 : 0)
        }
    }
    
    var status: SoundSource.Status {
        var status = sfSound_getStatus(self.pointer)
        switch status {
        case sfSoundStatus.sfStopped: return .stopped
        case sfSoundStatus.sfPaused: return .paused
        case sfSoundStatus.sfPlaying: return .playing
        }
    }
    
    var pitch: Float {
        get {
            return sfSound_getPitch(self.pointer)
        }
        set {
            sfSound_setPitch(self.pointer, newValue)
        }
    }
    
    var volume: Float {
        get {
            return sfSound_getVolume(self.pointer)
        }
        set {
            sfSound_setVolume(self.pointer, newValue)
        }
    }
    
    init() {
        self.pointer = sfSound_create()
    }
    
    convenience init(_ buffer: SoundBuffer) {
        self.init()
        self.buffer = buffer
    }
    
    deinit {
        sfSound_destroy(self.pointer)
    }
    
    func play() {
        sfSound_play(self.pointer)
    }
    
    func pause() {
        sfSound_pause(self.pointer)
    }
    
    func stop() {
        sfSound_stop(self.pointer)
    }
    
    func setBuffer(_ buffer: SoundBuffer) {
        sfSound_setBuffer(self.pointer, buffer.pointer)
    }
}
