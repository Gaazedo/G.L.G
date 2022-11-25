

import UIKit

class PetShopDetailsView: UIView {
    let titlePetShops = UILabel()
    let adressPetShop = UILabel()
    let picturePetShop = UIImageView()
    let descriptionPetShop = UILabel()
    let phonePetShop = UILabel()
    var petShopIndex : Int = 0
    let paragraph = NSMutableParagraphStyle()
    let view = UIScreen.main.bounds
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.addSubview(self.titlePetShops)
        self.addSubview(self.adressPetShop)
        self.addSubview(self.descriptionPetShop)
        self.addSubview(self.picturePetShop)
        self.addSubview(self.phonePetShop)
        
        titlePetShops.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        titlePetShops.self.font = UIFont.systemFont(ofSize: 28.0, weight: .semibold)
        titlePetShops.translatesAutoresizingMaskIntoConstraints = false

        adressPetShop.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        adressPetShop.numberOfLines = 0
        adressPetShop.self.font = UIFont.systemFont(ofSize: 16.0, weight: .medium)
        adressPetShop.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionPetShop.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        descriptionPetShop.self.font = UIFont.systemFont(ofSize: 16.0, weight: .regular)
        paragraph.alignment = .natural
        descriptionPetShop.numberOfLines = 0
        descriptionPetShop.translatesAutoresizingMaskIntoConstraints = false

        phonePetShop.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        phonePetShop.numberOfLines = 0
        phonePetShop.self.font = UIFont.systemFont(ofSize: 16.0, weight: .medium)
        phonePetShop.translatesAutoresizingMaskIntoConstraints = false
        
        picturePetShop.translatesAutoresizingMaskIntoConstraints = false
        picturePetShop.contentMode = .scaleAspectFill
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        picturePetShop.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: self.bounds.height * -0.6).isActive = true
       // picturePetShop.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
        picturePetShop.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        picturePetShop.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        titlePetShops.topAnchor.constraint(equalTo: picturePetShop.bottomAnchor, constant: 35).isActive = true
        titlePetShops.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        titlePetShops.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        
        adressPetShop.topAnchor.constraint(equalTo: titlePetShops.bottomAnchor, constant: 10).isActive = true
        adressPetShop.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        adressPetShop.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        
        phonePetShop.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.5).isActive = true
        phonePetShop.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20).isActive = true
        phonePetShop.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20).isActive = true
        
        descriptionPetShop.topAnchor.constraint(equalTo: adressPetShop.bottomAnchor, constant: 15).isActive = true
        descriptionPetShop.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20).isActive = true
        descriptionPetShop.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20).isActive = true
        

    
    }
}
