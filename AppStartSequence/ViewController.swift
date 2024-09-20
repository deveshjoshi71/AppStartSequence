//restoring the textView's unsafe text if the user exists the app while Editing process

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textviewExample: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func encodeRestorableState(with coder: NSCoder) {
        super.encodeRestorableState(with: coder)
        print("encodeRestorableState")
        if textviewExample.isFirstResponder { //checking if the textView is being edited => if yes then restore the text using
            coder.encode(textviewExample.text, forKey: "EditedText") //this method will be called whenever apps gets into background
        }
    }
    
    //this is used to decode the previouslys saved state information and restores the viewController to that state
    override func decodeRestorableState(with coder: NSCoder) {
        super.decodeRestorableState(with: coder)
        print("decodeRestorableState")
        if let editedText = coder.decodeObject(forKey: "EditedText") as? String { // this checks and find if there is a value in editedText
            //if find something we assign it to textView
            textviewExample.text = editedText
        }
    }


}

/*
//MARK: A View Controller can implement two methods to presist and restore its state
 1. Encode restorable state with coder
 2. Decode restorable state with coder
*/
