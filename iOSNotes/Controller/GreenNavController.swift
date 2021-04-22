
import UIKit

class GreenNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Setup
    private func setup() {
        navigationBar.barTintColor = #colorLiteral(red: 0.07843137255, green: 0.6941176471, blue: 0.6705882353, alpha: 1)
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
