import UIKit

class DetailViewController: UIViewController {
    
    // Property
    var myself: Myself?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let myself = myself {
            print(myself.name)
        }
        
        if let myself = myself {
            myselfImageView.image = myself.image
            contextLabel.text = myself.context
        }
    }
    
    //IBOutlets
    @IBOutlet weak var myselfImageView: UIImageView!
    @IBOutlet weak var contextLabel: UILabel!
    
}
