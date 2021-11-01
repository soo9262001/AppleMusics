import AVFoundation

class SimplePlayer {
    // 싱글톤 만들기, 왜 만드는가?  -> 돌려쓰기 위해서
    static let shared = SimplePlayer()
    
    private let player = AVPlayer()

    var currentTime: Double {
        // currentTime 구하기
        return player.currentItem?.currentTime().seconds ?? 0
    }
    
    var totalDurationTime: Double {
        // totalDurationTime 구하기
        return player.currentItem?.duration.seconds ?? 0
    }
    
    var isPlaying: Bool {
        // isPlaying 구하기
        return player.isPlaying
    }
    
    var currentItem: AVPlayerItem? {
        // currentItem 구하기
        return player.currentItem
    }
    
    init() { }
    
    func pause() {
        // pause구현
        player.pause()
    }
    
    func play() {
        // play구현
        player.play()
        
    }
    
    func seek(to time:CMTime) {
        // seek구현
        player.seek(to: time)
    }
    
    func replaceCurrentItem(with item: AVPlayerItem?) {
        // replace current item 구현
        player.replaceCurrentItem(with: item)
    }
    
    func addPeriodicTimeObserver(forInterval: CMTime, queue: DispatchQueue?, using: @escaping (CMTime) -> Void) {
        player.addPeriodicTimeObserver(forInterval: forInterval, queue: queue, using: using)
    }
}
