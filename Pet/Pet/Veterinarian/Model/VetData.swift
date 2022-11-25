//
//  PetShopData.swift
//  PetHome
//
//  Created by Gabriele Namie on 23/11/22.
//

import UIKit

class VetData {
    var images: UIImage
    var title: String
    let adressandhour: String
    var description: String
    var phone: String
    init(images: UIImage, title: String, adressandhour: String, description: String, phone: String) {
        self.images = images
        self.title = title
        self.adressandhour = adressandhour
        self.description = description
        self.phone = phone
    }
}
