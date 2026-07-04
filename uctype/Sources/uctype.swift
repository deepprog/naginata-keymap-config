import Foundation
import CoreGraphics

@main
struct KeySender {
    static func main() {
        let args = CommandLine.arguments
        guard args.count > 1 else { return }

        let theString = args.dropFirst().joined(separator: " ")
        let utf16 = Array(theString.utf16)
        let len = utf16.count

        guard let src = CGEventSource(stateID: .combinedSessionState) else { return }

        var i = 0
        let chunkSize = 1023

        while i < len {
            let n = min(i + chunkSize, len)
            let slice = utf16[i..<n]
            let uChars = Array(slice)

            uChars.withUnsafeBufferPointer { ptr in
                // keyDown
                if let evDown = CGEvent(keyboardEventSource: src,
                                        virtualKey: 0,
                                        keyDown: true) {
                    evDown.keyboardSetUnicodeString(
                        stringLength: uChars.count,
                        unicodeString: ptr.baseAddress!
                    )
                    evDown.post(tap: .cghidEventTap)
                }

                // keyUp
                if let evUp = CGEvent(keyboardEventSource: src,
                                      virtualKey: 0,
                                      keyDown: false) {
                    evUp.keyboardSetUnicodeString(
                        stringLength: uChars.count,
                        unicodeString: ptr.baseAddress!
                    )
                    evUp.post(tap: .cghidEventTap)
                }
            }

            i = n
            usleep(1000)
        }
    }
}
