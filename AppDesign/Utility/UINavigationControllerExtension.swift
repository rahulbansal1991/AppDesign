
import Foundation
import UIKit

extension UINavigationController {
    
    func setNavigationBarColor(color: UIColor, backgroundColor: UIColor = .clear) -> Void {
        
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.titleTextAttributes = [.foregroundColor: color]
            appearance.backgroundColor = backgroundColor
            appearance.shadowColor = UIColor.clear
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
            UINavigationBar.appearance().tintColor = color
            
        } else {
            self.navigationBar.barTintColor = color
            self.navigationBar.tintColor = .white
            self.view.backgroundColor = UIColor.clear
            self.navigationBar.isTranslucent = false
        }
    }
    
    func popToViewController(ofClass: AnyClass, animated: Bool = true) {
        if let vc = viewControllers.last(where: { $0.isKind(of: ofClass) }) {
          popToViewController(vc, animated: animated)
        }
      }
}

extension UINavigationItem {
    
    func hideBackButton() -> Void {
        self.setHidesBackButton(true, animated:true)
    }
    
    func showBackButton() -> Void {
        self.setHidesBackButton(false, animated:true)
    }
}
