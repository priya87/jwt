import Foundation
import Node

public struct ExpirationTime: DateWithLeewayClaim {

    public static var name = "exp"

    public let leeway: TimeInterval
    public let value: Date

    public init(_ value: Date, leeway: TimeInterval) {
        self.value = value
        self.leeway = leeway
    }

    public func verify(_ other: Date) -> Bool {
        return other <= value.addingTimeInterval(leeway)
    }
}
