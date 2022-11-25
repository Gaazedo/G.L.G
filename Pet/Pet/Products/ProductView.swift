import UIKit

struct ProductData {
    var image: UIImage
    var title: String
    var description: String
}

class ProductView: UIView {
    let passosLabel = UILabel()
    let searchBar = UISearchBar(frame: CGRect(x: 18, y: 145, width: 354, height: 32))
    
    let productData = [
        ProductData(image: UIImage(named: "pedigree")!,title: "Ração Pedigree", description: "Ração sem corantes artificiais, nutrição essencial com 24 vitaminas e minerais com Ômega 6 para pele e pelo saudáveis de seu cachorro,100% completo"),
        ProductData(image: UIImage(named: "gato")!,title: "Arranhador", description: "Usado para seu gato afiar as unhas e se divertir com o arranhador."),
        ProductData(image: UIImage(named: "camapet")!,title: "Caminha", description: "Ideal para seu pet descansar e se sentir confortável."),
        ProductData(image: UIImage(named: "gaiola")!,title: "Gaiola", description: "Perfeito para seu Hamster, possui muito espaço e tubos para ele brincar!"),
//        ProductData(image: UIImage(named: "jete.png")!,title: "Grand Jeté", description: "Movimento de atirar a perna, sempre esticada, e com os pés fora do chão, num salto, dando a sensação de que ele está flutuando no ar."),
//        ProductData(image: UIImage(named: "plie-1.png")!,title: "Plié", description: "Uma das principais posições que consiste numa flexão de joelhos, que serve para tornar os músculos mais flexíveis e os tendões mais elásticos."),
//        ProductData(image: UIImage(named: "plie-2.png")!,title: "Plié na 2ª posição", description: "Variação do plié com braços e pés na segunda posição."),
//        ProductData(image: UIImage(named: "plie-3.png")!,title: "Plié na 3ª posição", description: "Variação do plié com braços e pés na terceira posição."),
//        ProductData(image: UIImage(named: "plie-4.png")!,title: "Plié na 4ª posição", description: "Variação do plié com braços e pés na quarta posição."),
//        ProductData(image: UIImage(named: "plie-5.png")!,title: "Plié na 5ª posição", description: "Variação do plié com braços e pés na quinta posição."),
//        ProductData(image: UIImage(named: "primeira.png")!,title: "Primeira posição", description: "Pés en dehors, os calcanhares se encontram e a cava do pé para cima. Os braços ficam abaixo à altura do tronco à frente, arredondados."),
//        ProductData(image: UIImage(named: "quarta.png")!,title: "Quarta posição", description: "Pés iguais a terceira, porém mais afastados, um mais à frente do outro. Braços arredondados, o da frente para baixo e o de trás para cima."),
//        ProductData(image: UIImage(named: "quinta.png")!,title: "Quinta posição", description: "Pés o mais aberto possível. A ponta do pé de base está atrás do calcanhar do pé da frente. Braços arredondados, mantendo-se sempre à frente da cabeça."),
//        ProductData(image: UIImage(named: "releve.png")!,title: "Relevé", description: "Um movimento em que os calcanhares são levantadas do chão em subida, iniciando com plié."),
//        ProductData(image: UIImage(named: "passe.png")!,title: "Retiré", description: "Um dos pés permanece de apoio enquanto o outro é levantado em ponta à frente, atrás, ou ao lado do joelho de apoio."),
//        ProductData(image: UIImage(named: "segunda.png")!,title: "Segunda posição", description: "Pés mais distantes e en dehors, calcanhares afastados um do outro e a cava do pé para cima. Os braços arredondados, só que abertos para os lados."),
//        ProductData(image: UIImage(named: "terceira.png")!,title: "Terceira posição", description: "Calcanhar de base colado atrás do calcanhar à frente. O braço de trás deve estar à frente do tronco, e o braço da frente fica como o braço da segunda posição."),
//        ProductData(image: UIImage(named: "tendu-devant.png")!, title: "Tendu Devant", description: "Uma batida esticada, porque ambas as pernas estão esticadas durante a execução e o pé de trabalho não sai do chão."),
//        ProductData(image: UIImage(named: "tendu-derriere.png")!, title: "Tendu Derriére", description: "Posição idêntica ao Tendu Devant, com ambas as pernas esticadas, porém com o pé de trabalho atrás."),
    ]
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 50)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(ProductCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
 
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .white
    
        addSubview(passosLabel)
        addSubview(collectionView)
        addSubview(searchBar)

        // Config Collection View
        
        collectionView.backgroundColor = .clear
        let collectionViewConstraints: [NSLayoutConstraint] = [
            collectionView.topAnchor.constraint(equalTo: passosLabel.bottomAnchor, constant: 50),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80)
        ]
        NSLayoutConstraint.activate(collectionViewConstraints)

        
        //Config SearchBar
        
        searchBar.backgroundColor = UIColor.white
        searchBar.isTranslucent = true
        searchBar.placeholder = "Qual produto você está procurando?"
        searchBar.searchBarStyle = UISearchBar.Style.minimal
        searchBar.layer.cornerRadius = 20

       
        let searchBarConstraints: [NSLayoutConstraint] = [
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor),
            searchBar.topAnchor.constraint(equalTo: topAnchor, constant: 100)
        ]
        NSLayoutConstraint.activate(searchBarConstraints)
        
        //Config Titulo
        
        passosLabel.self.text = "Produtos"
        passosLabel.self.textColor = .black
        passosLabel.self.font = UIFont.systemFont(ofSize: 32.0, weight: .regular)
        passosLabel.self.textAlignment = .right
        passosLabel.translatesAutoresizingMaskIntoConstraints = false
        let productLabelConstraints: [NSLayoutConstraint] = [
            passosLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            passosLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100)
        ]
        NSLayoutConstraint.activate(productLabelConstraints)
    }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }

}
