
//how to make navigation page. so that current page can work as page 1
//how to make audio stop

import SwiftUI
import AVKit

class SoundManager {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    enum SoundOption: String {
        case bird
        case seagulls
    }
  
    
    func playSound(sound: SoundOption) {
        
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
                do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.numberOfLoops = -1
            player?.play()
        } catch let error {
        print("Error playing sound. \(error.localizedDescription)")
        }
    
    func stop() {
            player?.stop()
        }
    }

}



struct Page1: View {
    
    var soundManager = SoundManager ()
    
    var body: some View {
        VStack(spacing: 40) {
            Button("Play Sound 1") {
                SoundManager.instance.playSound(sound: .bird)
                }
            Button("Stop") {
                print("Button Stop")
//                player?.stop()
            }
            Button("Play Sound 2") {
                SoundManager.instance.playSound(sound: .seagulls)
                }
            }
        }
    }


struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
    }
}
