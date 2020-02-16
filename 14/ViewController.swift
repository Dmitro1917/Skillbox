import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Persistance.shared.test()
//        Persistance.shared.userName = "Dmitro"
//        print(Persistance.shared.userName)
    }


}

