public struct ALMA: ALMAProtocol {

    // MARK: - Properties

    // MARK: Internal Properties

    /// Enables / disables logging output to both *Xcode's Console* and the macOS *Console app*. `true` by default.
    internal static var isLoggingEnabled: Bool = true

    // MARK: - Lifecycle

    public init() {
        ALMA.log(
            information: "💪🏻 Armored, sharpened, and raring to go!",
            category: .lifecycle
        )
    }
}
