
import UIKit

class PetShopCell: UICollectionViewCell {
    var petShops = UIView()
    let titlePetShops = UILabel()
    let adressPetShops = UILabel()
    let descriptionPetShops = UILabel()
    let picturePetShop = UIImageView()
    var petshopData: PetShopData? {
        didSet {
            guard let petshopData = petshopData else { return }
            titlePetShops.text = petshopData.title
            adressPetShops.text = petshopData.adressandhour
            descriptionPetShops.text = petshopData.description
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(petShops)
        contentView.addSubview(picturePetShop)
        contentView.addSubview(titlePetShops)
        contentView.addSubview(adressPetShops)
        contentView.addSubview(descriptionPetShops)
        
        titlePetShops.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        titlePetShops.self.font = UIFont.systemFont(ofSize: 25.0, weight: .semibold)
        titlePetShops.translatesAutoresizingMaskIntoConstraints = false
        let titlePetShopsConstraints: [NSLayoutConstraint] = [
            titlePetShops.topAnchor.constraint(equalTo: petShops.topAnchor, constant: 188),
            titlePetShops.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 50),
            titlePetShops.leadingAnchor.constraint(equalTo: petShops.leadingAnchor, constant: 20),
            titlePetShops.trailingAnchor.constraint(equalTo: petShops.trailingAnchor, constant: -20)
        ]
        NSLayoutConstraint.activate(titlePetShopsConstraints)
        
        adressPetShops.textColor =  .black
        adressPetShops.self.font = UIFont.systemFont(ofSize: 14.0, weight: .medium)
        adressPetShops.translatesAutoresizingMaskIntoConstraints = false
        let adressPetShopsConstraints: [NSLayoutConstraint] = [
            adressPetShops.topAnchor.constraint(equalTo: titlePetShops.bottomAnchor),
            adressPetShops.bottomAnchor.constraint(equalTo: descriptionPetShops.topAnchor),
            adressPetShops.leadingAnchor.constraint(equalTo: petShops.leadingAnchor, constant: 20),
            adressPetShops.trailingAnchor.constraint(equalTo: petShops.trailingAnchor, constant: -20)
        ]
        NSLayoutConstraint.activate(adressPetShopsConstraints)

        descriptionPetShops.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .natural
        descriptionPetShops.self.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
        descriptionPetShops.numberOfLines = 3
        descriptionPetShops.translatesAutoresizingMaskIntoConstraints = false
        let descriptionPetShopsConstraints: [NSLayoutConstraint] = [
            descriptionPetShops.topAnchor.constraint(equalTo: petShops.bottomAnchor, constant: -60),
            descriptionPetShops.bottomAnchor.constraint(equalTo: petShops.bottomAnchor, constant: -5),
            descriptionPetShops.leadingAnchor.constraint(equalTo: titlePetShops.leadingAnchor),
            descriptionPetShops.trailingAnchor.constraint(equalTo: petShops.trailingAnchor, constant: -20)
        ]
        NSLayoutConstraint.activate(descriptionPetShopsConstraints)
         
        petShops.backgroundColor = #colorLiteral(red: 0.9337577224, green: 0.9337577224, blue: 0.9337577224, alpha: 1)
        petShops.contentMode = .scaleAspectFill
        petShops.clipsToBounds = true
        petShops.layer.cornerRadius = 10
        petShops.translatesAutoresizingMaskIntoConstraints = false
        let backgroundConstraints: [NSLayoutConstraint] = [
            petShops.topAnchor.constraint(equalTo: contentView.topAnchor),
            petShops.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            petShops.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            petShops.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            petShops.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: 135)
        ]
        NSLayoutConstraint.activate(backgroundConstraints)
        
        picturePetShop.translatesAutoresizingMaskIntoConstraints = false
        picturePetShop.contentMode = .scaleAspectFill
        picturePetShop.layer.cornerRadius = self.frame.height / 2
        picturePetShop.layer.cornerRadius = 10
        picturePetShop.clipsToBounds = true
        let pictureConstraints: [NSLayoutConstraint] = [
            picturePetShop.topAnchor.constraint(equalTo: petShops.topAnchor, constant: 15),
            picturePetShop.bottomAnchor.constraint(equalTo: petShops.bottomAnchor, constant: -120),
            picturePetShop.leadingAnchor.constraint(equalTo: petShops.leadingAnchor, constant: 15),
            picturePetShop.trailingAnchor.constraint(equalTo: petShops.trailingAnchor, constant: -15)
        ]
        NSLayoutConstraint.activate(pictureConstraints)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


