//
//  PetShops.swift
//  PetHome
//
//  Created by Gabriele Namie on 23/11/22.
//

import UIKit

class Veterinarian {
    static var vetList: [VetData] = [
        VetData(images: UIImage(named:"vetnasa")!, title: "Clínica Veterinária HVetKlabin", adressandhour: "Endereço: R. João Luís Vives, 135 - Vila Mariana, São Paulo - SP", description: "A Clínica Veterinária VetKlabin é o lugar ideal para cuidar do seu amigo, ela conta com hospital veterinário, petshop, atendimento 24hrs via whatsapp, entre outras coisas!", phone: "(11) 5083-3545"),
        VetData(images: UIImage(named:"vetnas")!, title: "Vetnasa Lapa 24 horas", adressandhour: "R. Clélia, 1017 - Lapa, São Paulo - SP", description: "Clínica Veterinária Vetnasa, criada para atender a necessidade de proprietários e criadores na assistência à saúde de cães e gatos, além de animais silvestres e exóticos, prestando serviços de qualidade, através de uma equipe de Veterinários selecionada em função de suas experiências e capacitações", phone: "(11) 3868-3166"),
        VetData(images: UIImage(named:"zoovet")!, title: "Zoovet 24 horas", adressandhour: " R. Marselhesa, 333 - Vila Mariana, São Paulo - SP", description: "Atendimento veterinário 24 horas, vacinas, cirurgias, internação cães, internação felinos, internação animais silvestres, fisioterapia e acupuntura, laboratório, raio x, ultrassonografia, cardiologia Vet, ortopedia Vet, oftalmologia Vet, odontologia Vet", phone: "(11) 5573-1222"),
        VetData(images: UIImage(named:"animalcare")!, title: "Animal Care Ipiranga", adressandhour: "R. Bom Pastor, 2569 - Ipiranga, São Paulo - SP", description: " Todo o hospital foi meticulosamente pensado para adequar as necessidades dos pets e de seus tutores, visando ser um local aconchegante e amplo. Fundado oficialmente em 27/07/2015, o Hospital Animal Care Ipiranga iniciou suas atividades na região do Ipiranga logo como um hospital veterinário 24h com todos os serviços necessários para o bem estar dos animais de estimação", phone: "((11) 3589-2090"),
        VetData(images: UIImage(named:"wildvet")!, title: "WildVet", adressandhour: " R. Prof. Vahia de Abreu, 514 - Itaim Bibi, São Paulo - SP", description: "A Wildvet funciona 24h com atendimento especializado para aves, répteis, pequenos mamíferos (coelhos, ferrets), primatas (saguis), roedores (chinchila, porquinho da Índia, hamster, esquilo), entre outros. Oferecemos também o serviço de hospedagem", phone: "(11) 3045-0045"),
        VetData(images: UIImage(named:"querubim")!, title: "Querubim Vet", adressandhour: " Av. dos Eucaliptos, 722 - Indianópolis, São Paulo - SP", description: "Atendimento veterinário eletivo e de emergência, Internação, Exames Laboratoriais, Exames de Imagem, Cirurgias, Day Clinic, Banho & Tosa, Farmácia e Especialidades (Oftalmologia, Odontologia, Cardiologia, Ortopedia, Gastroenterologia, Neurologia, Endocrinologia, Nefrologia, Oncologia, Dermatologia, Fisioterapia, Acupuntura e Nutrição).", phone: "(11) 94985-8910"),
        VetData(images: UIImage(named:"petcare")!, title: "PetCare Hospital", adressandhour: " Av. Giovanni Gronchi, 3001 - Paraisópolis, São Paulo - SP", description: "O Pet Care é a maior rede de Hospitais Veterinários para cães e gatos do Brasil. Nossos hospitais contam com os melhores serviços e os melhores Médicos Veterinários nas mais diversas especialidades.", phone: "(11) 4673-0060"),
        VetData(images: UIImage(named:"evet")!, title: "EVET", adressandhour: "R. Bairi, 158 - Lapa, São Paulo - SP", description: "Novo conceito na Medicina Veterinária . Clínica veterinária diferenciada . União da Ciência, Meditação e Espiritualidade", phone: " (11) 3554-8637"),
        VetData(images: UIImage(named:"paradapet")!, title: "Parada Pet 24 horas", adressandhour: "Av. Gen. Ataliba Leonel, 2779 - Parada Inglesa, São Paulo - SP", description: "Veterinário 24 hs, consultas e especialidades, cirurgia, internação, vacinas, exames, medicamentos...", phone: "(11) 2283-1212"),
        VetData(images: UIImage(named:"tatuape")!, title: "Clinica Veterinária Tatuapé", adressandhour: "Rua Dom Andrés Lamas, 287 - Tatuapé, São Paulo - SP", description: "Na Clínica Veterinária Tatuapé a saúde e o bem estar do seu animal são, para nós, prioritários! Temos uma equipa de médicos, cirurgiões e enfermeiros veterinários experientes, para podermos proporcionar ao(s) seu(s) animal(ais) a qualidade de serviço que você procura.", phone: "(11) 2092-9989")
    ]
}
