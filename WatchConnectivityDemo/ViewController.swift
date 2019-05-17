
import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate {
    
    // MARK: Outlets
    
    @IBOutlet weak var textField: UITextField!
    
    // MARK: Variables
    
    var wcSession : WCSession! = nil

    // MARK: Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wcSession = WCSession.default
        wcSession.delegate = self
        wcSession.activate()
        
    }
    
    // MARK: Button Actions
    
    @IBAction func sendText(_ sender: Any) {
        
        let txt = textField.text!
        let message = ["message":txt]
        
        wcSession.sendMessage(message, replyHandler: nil) { (error) in
            
            print(error.localizedDescription)
            
        }
        
    }
    
    // MARK: WCSession Methods

    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
        // Code
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
        // Code
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
        // Code
        
    }

}

