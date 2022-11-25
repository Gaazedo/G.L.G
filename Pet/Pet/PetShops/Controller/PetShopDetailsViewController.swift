

import UIKit

class PetShopDetailsViewController: UIViewController, UIGestureRecognizerDelegate {
    let myView = PetShopDetailsView()
    var petShop: PetShopData!
    static var petShopIndex : Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myView
        
        myView.titlePetShops.text = petShop.title
        myView.descriptionPetShop.text = petShop.description
        myView.adressPetShop.text = petShop.adressandhour
        myView.picturePetShop.image = petShop.images
        myView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.backItem?.title = "Pet Shops"
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


