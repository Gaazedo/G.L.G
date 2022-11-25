

import UIKit
import Foundation

class PetShopsCollectionViewController: UIViewController {
    
    let myView = PetShopView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = myView
        self.navigationItem.title = "Pet Shops"
        myView.backgroundColor = .systemBackground
        myView.collectionView.delegate = self
        myView.collectionView.dataSource = self
        scrollViewWillBeginDecelerating(myView.collectionView)
        
    }
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        if scrollView.panGestureRecognizer.translation(in: scrollView).y > 0{
            navigationController?.navigationBar.prefersLargeTitles = true
            navigationController?.navigationBar.barTintColor = .systemBackground
        } else {
            navigationController?.navigationBar.prefersLargeTitles = false
            navigationController?.navigationBar.barTintColor = .systemBackground
        }
    }
}

extension PetShopsCollectionViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return PetShops.petShopList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PetShopCell
        //cell.
        cell.picturePetShop.image = PetShops.petShopList[indexPath.row].images
        cell.titlePetShops.text = PetShops.petShopList[indexPath.row].title
        cell.adressPetShops.text = PetShops.petShopList[indexPath.row].adressandhour
        cell.descriptionPetShops.text = PetShops.petShopList[indexPath.row].description
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        PetShopDetailsViewController.petShopIndex = indexPath.row
        performSegue(withIdentifier: "PetShopDetailsViewController", sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? PetShopDetailsViewController,
              let index = sender as? Int else {
            return
            }
        vc.petShop = PetShops.petShopList[index]
        
    }
}
