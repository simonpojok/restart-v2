//
//  AudioPlayer.swift
//  Restart
//
//  Created by Simon Peter Ojok on 29/04/2023.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.url(forResource: sound, withExtension: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: path)
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
