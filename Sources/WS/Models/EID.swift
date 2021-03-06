import Foundation

/// Event identifier model
///
/// Extend it to declare your websocket events
/// ```swift
/// extension EID {
///     static var userOnline: EID<UserModel> { .init("userOnline") }
/// }
/// ```
public struct EID<P: Codable>: Equatable, Hashable, CustomStringConvertible, ExpressibleByStringLiteral {
    /// The unique id.
    public let id: String
    
    /// See `CustomStringConvertible`.
    public var description: String {
        return id
    }
    
    /// Create a new `EventIdentifier`.
    public init(_ id: String) {
        self.id = id
    }
    
    /// See `ExpressibleByStringLiteral`.
    public init(stringLiteral value: String) {
        self.init(value)
    }
}
