___FILEHEADER___

import SwiftUI

// MARK: - Public API

public extension View {
    func ___VARIABLE_modifierName___() -> some View {
        modifier(___VARIABLE_viewModifierName___())
    }
}

// MARK: - Private API

private struct ___VARIABLE_viewModifierName___: ViewModifier {
    init() {
    }

    func body(content: Content) -> some View {
        content
		// attach your code here
    }
}
