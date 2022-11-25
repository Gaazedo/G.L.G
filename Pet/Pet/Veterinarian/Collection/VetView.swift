

import UIKit

class VetView: UIView {
    let vetLabel = UILabel()
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 336, height: 165)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 50, bottom: 150, right: 50)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 150
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(VetCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.9647058824, blue: 0.9411764706, alpha: 1)
        addSubview(vetLabel)
        addSubview(collectionView)
        
        collectionView.backgroundColor = .clear
        let collectionViewConstraints: [NSLayoutConstraint] = [
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: self.bounds.height * 0.18),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30)
        ]
        NSLayoutConstraint.activate(collectionViewConstraints)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
