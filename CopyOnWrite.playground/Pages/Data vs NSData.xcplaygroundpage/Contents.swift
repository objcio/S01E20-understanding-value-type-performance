import Foundation

var sampleBytes: [UInt8] = [0x0b,0xad,0xf0,0x0d]

let nsData = NSMutableData(bytes: sampleBytes, length: sampleBytes.count)
let nsOtherData = nsData.mutableCopy() as! NSMutableData
nsData.append(sampleBytes, length: sampleBytes.count)
nsOtherData

var data = Data(bytes: sampleBytes)
let copy = data
data.append(sampleBytes, count: sampleBytes.count)
copy