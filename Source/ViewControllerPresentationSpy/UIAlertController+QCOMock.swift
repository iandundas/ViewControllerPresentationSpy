import UIKit

extension UIAlertController {
    
@objc class func qcoMock_swizzle2() {
    NSObject.qcoMockAlerts_replaceClassMethod(
            #selector(UIAlertController.init(title:message:preferredStyle:)),
            withMethod: #selector(UIAlertController.qcoMock_alertController(withTitle:message:preferredStyle:))
    )
    
    #if (os(iOS))
        NSObject.qcoMockAlerts_replaceInstanceMethod(
                #selector(getter: UIAlertController.popoverPresentationController),
                withMethod: #selector(UIAlertController.qcoMock_popoverPresentationController)
        )
    #endif

//    NSObject.qcoMockAlerts_replaceClassMet
//    [self qcoMockAlerts_replaceClassMethod:@selector(alertControllerWithTitle:message:preferredStyle:)
//    withMethod:@selector(qcoMock_alertControllerWithTitle:message:preferredStyle:)];
}

}
