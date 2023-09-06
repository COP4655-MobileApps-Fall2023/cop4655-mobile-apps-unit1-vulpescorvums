import UIKit

class ViewController: UIViewController {
    
    let contextPage1 = Myself(name: "Gardening", image: UIImage(named: "flower")!, context: "One of my favourite pastimes is to garden. I have been able to grow many different plants including sunflowers, tomatoes, peppers, and Dahlias. one of my more cherished plants is my Mammoth sunflower as seen above. ")
    let contextPage2 = Myself(name: "Pets", image: UIImage(named: "salem")!, context: "I love my cat, his name is Salem. He likes to run around chasing toys, beg for treats, and sleep on my mousepad when i play video games. ")
    let contextPage3 = Myself(name: "Hobby", image: UIImage(named: "games")!, context: "I love to play videogames. One of my most played games is Destiny 2 with 3,011 hours played. Salem likes to sit in front of the screen to tell me to take a break when i've been playing for too long.")

    // Array for storing contexts
    var myselfArray: [Myself] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myselfArray = [contextPage1, contextPage2, contextPage3]
        
    }
    
    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.myself = myselfArray[0]
            } else if tappedView.tag == 1 {
                detailViewController.myself = myselfArray[1]
            } else if tappedView.tag == 2 {
                detailViewController.myself = myselfArray[2]
            } else {
                print("no button was tapped, please check your selection.")
            }
        }
    }
}
