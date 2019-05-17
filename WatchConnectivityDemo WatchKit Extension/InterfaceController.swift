
import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController, WCSessionDelegate {
    
    // MARK: Outlets
    
    @IBOutlet weak var textLabel: WKInterfaceLabel!
    
    // MARK: Variables
    
    var wcSession : WCSession!
    
    // MARK: Overrides
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        wcSession = WCSession.default
        wcSession.delegate = self
        wcSession.activate()
        
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
    // MARK: WCSession Methods

    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
        // Code
        
    }

}
