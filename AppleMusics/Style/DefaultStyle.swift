import UIKit

// 다크모드 대응
public enum DefaultStyle {
    public enum Colors {
        public static let tint: UIColor = {
            if #available(iOS 15.0, *) {
                return UIColor { traitCollction in
                    if traitCollction.userInterfaceStyle == .dark {
                        return .white
                    } else {
                        return .black
                    }
                }
            } else {
                return .black
            }
        }()
    }
}
