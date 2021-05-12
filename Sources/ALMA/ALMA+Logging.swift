import AppLogger
import Foundation

/// `ALMA` logging categories to further distinguish the running parts of the package.
///
/// Refer to: https://developer.apple.com/documentation/os/logging
public enum ALMALoggingCategory: String {
    case lifecycle  = "ALMA_Lifecycle"
    case error      = "ALMA_Error"
}

public extension ALMA {

    // MARK: Enable / Disable Logging

    /// Enables / disables logging information via `AppLogger`.
    ///
    /// When logging is enabled, the output will be available in *Xcode's Console* or
    /// in the *macOS Console app*.
    ///
    /// In the **macOS Console app**, you can filter ALMA's output by
    /// `SUBSYSTEM`: `com.backslash-f.ALMA`.
    func setLogging(enabled: Bool) {
        ALMA.isLoggingEnabled = enabled
    }
}

// MARK: - Internal

internal extension ALMA {

    /// Logs the given `String` information via `AppLogger`.
    ///
    /// - Parameters:
    ///   - information: The `String` to be logged.
    ///   - category: A member of the `ALMALoggingCategory` enum.
    static func log(information: String, category: ALMALoggingCategory) {
        guard isLoggingEnabled else {
            return
        }
        let subsystem = "com.backslash-f.ALMA"
        let logger = AppLogger(subsystem: subsystem, category: category.rawValue)
        logger.log(information)
    }

    static func logError(_ error: String) {
        log(information: error, category: .error)
    }
}
