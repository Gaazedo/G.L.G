

import UIKit
import Foundation

class VetCollectionViewController: UIViewController {
    
    let myView = VetView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = myView
        self.navigationItem.title = "Veterinários"
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

extension VetCollectionViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return Veterinarian.vetList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! VetCell
        //cell.
        cell.pictureVet.image = Veterinarian.vetList[indexPath.row].images
        cell.titleVet.text = Veterinarian.vetList[indexPath.row].title
        cell.adressVet.text = Veterinarian.vetList[indexPath.row].adressandhour
        cell.descriptionVet.text = Veterinarian.vetList[indexPath.row].description
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        VetDetailsViewController.vetIndex = indexPath.row
        performSegue(withIdentifier: "VetDetailsViewController", sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? VetDetailsViewController,
              let index = sender as? Int else {
            return
            }
        vc.vet = Veterinarian.vetList[index]
        
    }
}





