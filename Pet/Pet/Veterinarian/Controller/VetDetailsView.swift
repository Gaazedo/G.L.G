

import UIKit

class VetDetailsView: UIView {
    let titleVet = UILabel()
    let adressVet = UILabel()
    let pictureVet = UIImageView()
    let descriptionVet = UILabel()
    var vetIndex : Int = 0
    let paragraph = NSMutableParagraphStyle()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.addSubview(self.titleVet)
        self.addSubview(self.adressVet)
        self.addSubview(self.descriptionVet)
        self.addSubview(self.pictureVet)
        
        titleVet.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        titleVet.self.font = UIFont.systemFont(ofSize: 28.0, weight: .semibold)
        titleVet.translatesAutoresizingMaskIntoConstraints = false

        adressVet.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        adressVet.numberOfLines = 0
        adressVet.self.font = UIFont.systemFont(ofSize: 16.0, weight: .medium)
        adressVet.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionVet.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        descriptionVet.self.font = UIFont.systemFont(ofSize: 16.0, weight: .regular)
        paragraph.alignment = .natural
        descriptionVet.numberOfLines = 0
        descriptionVet.translatesAutoresizingMaskIntoConstraints = false

        pictureVet.translatesAutoresizingMaskIntoConstraints = false
        pictureVet.contentMode = .scaleAspectFill
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        pictureVet.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: self.bounds.height * -0.6).isActive = true
        pictureVet.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        pictureVet.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        titleVet.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.42).isActive = true
        titleVet.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        titleVet.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        
        adressVet.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.47).isActive = true
        adressVet.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        adressVet.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        
        descriptionVet.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.54).isActive = true
        descriptionVet.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20).isActive = true
        descriptionVet.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20).isActive = true
    
    }
}
