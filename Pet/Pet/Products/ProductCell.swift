import Foundation
import UIKit

class ProductCell: UICollectionViewCell {
    
    let product = UIView()
    let titleProduct = UILabel()
    let descriptionProduct = UILabel()
    let pictureProduct = UIImageView()
    var productData: ProductData? {
        didSet {
            guard let productData = productData else { return }
            titleProduct.text = productData.title
            descriptionProduct.text = productData.description
            pictureProduct.image = productData.image
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(product)
        contentView.addSubview(titleProduct)
        contentView.addSubview(descriptionProduct)
        contentView.addSubview(pictureProduct)
        
  
        //Config Título
        
        titleProduct.textColor = .black
        titleProduct.self.font = UIFont.systemFont(ofSize: 25.0, weight: .light)
       
        titleProduct.translatesAutoresizingMaskIntoConstraints = false
        let tituloProductConstraints: [NSLayoutConstraint] = [
            titleProduct.topAnchor.constraint(equalTo: product.topAnchor, constant: -95),
            titleProduct.bottomAnchor.constraint(equalTo: product.bottomAnchor, constant: 10),
            titleProduct.leadingAnchor.constraint(equalTo: product.leadingAnchor, constant: 20),
            titleProduct.trailingAnchor.constraint(equalTo: product.trailingAnchor, constant: -20)
        ]
        NSLayoutConstraint.activate(tituloProductConstraints)
        
        //Config Descrição
        
        descriptionProduct.textColor = .black
        descriptionProduct.self.font = UIFont.systemFont(ofSize: 12.0, weight: .light)
        descriptionProduct.numberOfLines = 0
//        descricaoPasso.backgroundColor = .red
        
        descriptionProduct.translatesAutoresizingMaskIntoConstraints = false
        let descricaoProductConstraints: [NSLayoutConstraint] = [
            descriptionProduct.topAnchor.constraint(equalTo: titleProduct.bottomAnchor, constant: -106),
            descriptionProduct.bottomAnchor.constraint(equalTo: product.bottomAnchor, constant: -10),
            descriptionProduct.leadingAnchor.constraint(equalTo: titleProduct.leadingAnchor),
            descriptionProduct.trailingAnchor.constraint(equalTo: product.centerXAnchor, constant: 28)
        ]
        NSLayoutConstraint.activate(descricaoProductConstraints)
        
        product.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
        product.contentMode = .scaleAspectFill
        product.clipsToBounds = true
        product.layer.cornerRadius = 10
        product.translatesAutoresizingMaskIntoConstraints = false
        let backgroundConstraints: [NSLayoutConstraint] = [
            product.topAnchor.constraint(equalTo: contentView.topAnchor),
            product.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            product.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            product.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(backgroundConstraints)
      
        //Config foto
        
//        fotoPasso.backgroundColor = .blue
        pictureProduct.translatesAutoresizingMaskIntoConstraints = false
        let fotoProductConstraints: [NSLayoutConstraint] = [
            pictureProduct.topAnchor.constraint(equalTo: product.topAnchor, constant: 5),
            pictureProduct.bottomAnchor.constraint(equalTo: product.bottomAnchor, constant: -5),
            pictureProduct.leadingAnchor.constraint(equalTo: product.leadingAnchor, constant: 200),
            pictureProduct.trailingAnchor.constraint(equalTo: product.trailingAnchor, constant: -5)
        ]
        NSLayoutConstraint.activate(fotoProductConstraints)
    
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


