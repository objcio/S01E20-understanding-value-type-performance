import Foundation

var sampleBytes: [UInt8] = [0x0b,0xad,0xf0,0x0d]

struct MyData {
    var data = NSMutableData()
    var dataForWriting: NSMutableData {
        mutating get {
            print("making a copy")
            data = data.mutableCopy() as! NSMutableData
            return data
        }
    }
    
    mutating func append(_ bytes: [UInt8]) {
        dataForWriting.append(bytes, length: bytes.count)
    }
}

extension MyData: CustomDebugStringConvertible {
    var debugDescription: String {
        return String(describing: data)
    }
}

var data = MyData()
var copy = data
data.append(sampleBytes)
copy

for _ in 0..<10 {
    data.append(sampleBytes)
}
