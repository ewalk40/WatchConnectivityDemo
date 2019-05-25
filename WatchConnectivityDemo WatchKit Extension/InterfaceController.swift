
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
        
    }
    
    override func willActivate() {
        super.willActivate()
        
        wcSession = WCSession.default
        wcSession.delegate = self
        wcSession.activate()
        
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
    // MARK: WCSession Methods

    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        
        let text = message["message"] as! String
        
        textLabel.setText(text)
        
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
        // Code.
        
    }

}
