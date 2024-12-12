import AppLogger
import Foundation

/// `ALMA` logging categories to further distinguish the running parts of the package.
///
/// Refer to: https://developer.apple.com/documentation/os/logging
public enum ALMALoggingCategory: String {
    case lifecycle  = "ALMA_Lifecycle"
    case error      = "ALMA_Error"
}

// MARK: - Internal

internal extension ALMA {

    /// Logs the given `String` information via `AppLogger`.
    ///
    /// - Parameters:
    ///   - information: The `String` to be logged.
    ///   - category: A member of the `ALMALoggingCategory` enum.
    func log(information: String, category: ALMALoggingCategory) {
        guard isLoggingEnabled else {
            return
        }
        let subsystem = "com.backslash-f.ALMA"
        let logger = AppLogger(subsystem: subsystem, category: category.rawValue)
        logger.log(information)
    }

    func logError(_ error: String) {
        log(information: error, category: .error)
    }
}
