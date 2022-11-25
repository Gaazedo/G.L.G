

import UIKit

class VetDetailsViewController: UIViewController, UIGestureRecognizerDelegate {
    let myView = VetDetailsView()
    var vet: VetData!
    static var vetIndex : Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myView
        
        myView.titleVet.text = vet.title
        myView.descriptionVet.text = vet.description
        myView.adressVet.text = vet.adressandhour
        myView.pictureVet.image = vet.images
        myView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.backItem?.title = "Veterinários"
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if wilmove {
            hidesBottomBarWhenPushed = false
        }
        wilmove = false
    }
    
    var wilmove = false
    
    override func willMove(toParent parent: UIViewController?) {
        super.willMove(toParent: parent)
        wilmove = true
        if !isViewLoaded {
            hidesBottomBarWhenPushed = true
        }
    }
}


