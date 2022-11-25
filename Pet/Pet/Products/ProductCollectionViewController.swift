import Foundation
import UIKit

class ProductCollectionViewController: UIViewController {
    
    let myView = ProductView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = myView
        myView.collectionView.delegate = self
        myView.collectionView.dataSource = self

    }
}
extension ProductCollectionViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 335, height: 155)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCell
        cell.productData = myView.productData[indexPath.row]
        return cell
    }
    
}
