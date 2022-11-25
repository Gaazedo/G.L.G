
import UIKit

class VetCell: UICollectionViewCell {
    var vet = UIView()
    let titleVet = UILabel()
    let adressVet = UILabel()
    let descriptionVet = UILabel()
    let pictureVet = UIImageView()
    var vetData: VetData? {
        didSet {
            guard let vetData = vetData else { return }
            titleVet.text = vetData.title
            adressVet.text = vetData.adressandhour
            descriptionVet.text = vetData.description
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(vet)
        contentView.addSubview(pictureVet)
        contentView.addSubview(titleVet)
        contentView.addSubview(adressVet)
        contentView.addSubview(descriptionVet)
        
        titleVet.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        titleVet.self.font = UIFont.systemFont(ofSize: 25.0, weight: .semibold)
        titleVet.translatesAutoresizingMaskIntoConstraints = false
        let titleVetConstraints: [NSLayoutConstraint] = [
            titleVet.topAnchor.constraint(equalTo: vet.topAnchor, constant: 188),
            titleVet.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 50),
            titleVet.leadingAnchor.constraint(equalTo: vet.leadingAnchor, constant: 20),
            titleVet.trailingAnchor.constraint(equalTo: vet.trailingAnchor, constant: -20)
        ]
        NSLayoutConstraint.activate(titleVetConstraints)
        
        adressVet.textColor =  .black
        adressVet.self.font = UIFont.systemFont(ofSize: 14.0, weight: .medium)
        adressVet.translatesAutoresizingMaskIntoConstraints = false
        let adressVetConstraints: [NSLayoutConstraint] = [
            adressVet.topAnchor.constraint(equalTo: titleVet.bottomAnchor),
            adressVet.bottomAnchor.constraint(equalTo: descriptionVet.topAnchor),
            adressVet.leadingAnchor.constraint(equalTo: vet.leadingAnchor, constant: 20),
            adressVet.trailingAnchor.constraint(equalTo: vet.trailingAnchor, constant: -20)
        ]
        NSLayoutConstraint.activate(adressVetConstraints)

        descriptionVet.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .natural
        descriptionVet.self.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
        descriptionVet.numberOfLines = 3
        descriptionVet.translatesAutoresizingMaskIntoConstraints = false
        let descriptionVetConstraints: [NSLayoutConstraint] = [
            descriptionVet.topAnchor.constraint(equalTo: vet.bottomAnchor, constant: -60),
            descriptionVet.bottomAnchor.constraint(equalTo: vet.bottomAnchor, constant: -5),
            descriptionVet.leadingAnchor.constraint(equalTo: titleVet.leadingAnchor),
            descriptionVet.trailingAnchor.constraint(equalTo: vet.trailingAnchor, constant: -20)
        ]
        NSLayoutConstraint.activate(descriptionVetConstraints)
         
        vet.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
        vet.contentMode = .scaleAspectFill
        vet.clipsToBounds = true
        vet.layer.cornerRadius = 10
        vet.translatesAutoresizingMaskIntoConstraints = false
        let backgroundConstraints: [NSLayoutConstraint] = [
            vet.topAnchor.constraint(equalTo: contentView.topAnchor),
            vet.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            vet.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            vet.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            vet.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: 135)
        ]
        NSLayoutConstraint.activate(backgroundConstraints)
        
        pictureVet.translatesAutoresizingMaskIntoConstraints = false
        pictureVet.contentMode = .scaleAspectFill
        pictureVet.layer.cornerRadius = self.frame.height / 2
        pictureVet.layer.cornerRadius = 10
        pictureVet.clipsToBounds = true
        let pictureConstraints: [NSLayoutConstraint] = [
            pictureVet.topAnchor.constraint(equalTo: vet.topAnchor, constant: 15),
            pictureVet.bottomAnchor.constraint(equalTo: vet.bottomAnchor, constant: -120),
            pictureVet.leadingAnchor.constraint(equalTo: vet.leadingAnchor, constant: 15),
            pictureVet.trailingAnchor.constraint(equalTo: vet.trailingAnchor, constant: -15)
        ]
        NSLayoutConstraint.activate(pictureConstraints)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


