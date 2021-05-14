// swiftlint:disable all
/// Autogenerated file
import UIKit

/// Entry point for the app stylesheet
extension FluentUIStyle {

	// MARK: - MSFPersonaViewTokens
	open var MSFPersonaViewTokens: MSFPersonaViewTokensAppearanceProxy {
		return MSFPersonaViewTokensAppearanceProxy(proxy: { return self })
	}
	open class MSFPersonaViewTokensAppearanceProxy {
		public let mainProxy: () -> FluentUIStyle
		public init(proxy: @escaping () -> FluentUIStyle) {
			self.mainProxy = proxy
		}

		// MARK: - footnoteFont 
		open var footnoteFont: UIFont {
			return mainProxy().Typography.footnote
		}

		// MARK: - iconInterspace 
		open var iconInterspace: CGFloat {
			return mainProxy().Spacing.small
		}

		// MARK: - labelAccessoryInterspace 
		open var labelAccessoryInterspace: CGFloat {
			return mainProxy().Spacing.xxxSmall
		}

		// MARK: - labelAccessorySize 
		open var labelAccessorySize: CGFloat {
			return mainProxy().Icon.size.xSmall
		}

		// MARK: - labelFont 
		open var labelFont: UIFont {
			return mainProxy().Typography.headline
		}

		// MARK: - sublabelColor 
		open var sublabelColor: UIColor {
			return mainProxy().Colors.Foreground.neutral1
		}
	}

}
fileprivate var __AppearanceProxyHandle: UInt8 = 0
fileprivate var __ThemeAwareHandle: UInt8 = 0
fileprivate var __ObservingDidChangeThemeHandle: UInt8 = 0

extension MSFPersonaViewTokens: AppearaceProxyComponent {

	public typealias AppearanceProxyType = FluentUIStyle.MSFPersonaViewTokensAppearanceProxy
	public var appearanceProxy: AppearanceProxyType {
		get {
			if let proxy = objc_getAssociatedObject(self, &__AppearanceProxyHandle) as? AppearanceProxyType {
				if !themeAware { return proxy }


				return proxy
			}

			return FluentUIThemeManager.stylesheet(FluentUIStyle.shared()).MSFPersonaViewTokens
		}
		set {
			objc_setAssociatedObject(self, &__AppearanceProxyHandle, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
			didChangeAppearanceProxy()
		}
	}

	public var themeAware: Bool {
		get {
			guard let proxy = objc_getAssociatedObject(self, &__ThemeAwareHandle) as? Bool else { return true }
			return proxy
		}
		set {
			objc_setAssociatedObject(self, &__ThemeAwareHandle, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
			isObservingDidChangeTheme = newValue
		}
	}

	fileprivate var isObservingDidChangeTheme: Bool {
		get {
			guard let observing = objc_getAssociatedObject(self, &__ObservingDidChangeThemeHandle) as? Bool else { return false }
			return observing
		}
		set {
			if newValue == isObservingDidChangeTheme { return }
			if newValue {
				NotificationCenter.default.addObserver(self, selector: #selector(didChangeAppearanceProxy), name: Notification.Name.didChangeTheme, object: nil)
			} else {
				NotificationCenter.default.removeObserver(self, name: Notification.Name.didChangeTheme, object: nil)
			}
			objc_setAssociatedObject(self, &__ObservingDidChangeThemeHandle, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
		}
	}
}