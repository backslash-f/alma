import Foundation

public protocol ALMAProtocol {

    /// Enables or disables logging.
    ///
    /// - Parameter enabled: `true` if `ALMA` should output log info; `false` otherwise.
    func setLogging(enabled: Bool)
}
