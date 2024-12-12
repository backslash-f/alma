public struct ALMA {

    // MARK: - Properties

    // MARK: Internal Properties

    /// Enables / disables logging information via `AppLogger`.
    ///
    /// When logging is enabled, the output will be available in *Xcode's Console* or
    /// in the *macOS Console app*.
    ///
    /// In the **macOS Console app**, you can filter ALMA's output by
    /// `SUBSYSTEM`: `com.backslash-f.ALMA`.
    let isLoggingEnabled: Bool

    // MARK: - Lifecycle
    
    /// Creates an ``ALMA`` instance.
    ///
    /// - Parameter isLoggingEnabled: defaults to `true`.
    public init(isLoggingEnabled: Bool = true) {
        self.isLoggingEnabled = isLoggingEnabled
        log(
            information: "💪🏻 Armored, sharpened, and raring to go!",
            category: .lifecycle
        )
    }
}
