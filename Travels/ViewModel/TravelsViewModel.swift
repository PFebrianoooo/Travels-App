//
//  travelsViewModel.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 25/01/24.
//

import Foundation
class TravelsViewModel: ObservableObject {
    @Published var advertisement: [String] = ["nusaDua"]
    @Published var bestLocations: [ListItems] = [
        ListItems(imageLogo: "rajaAmpat",
                  imageItems: ["rajaAmpatDetail1", "rajaAmpatDetail2", "rajaAmpatDetail3"],
                  destination: "Raja Ampat",
                  location: "Papua, Indonesia",
                  infoDestination: "Raja Ampat, or the Four Kings, is an archipelago located off the northwest tip of Bird's Head Peninsula on the island of New Guinea, in Indonesia's Southwest Papua province. It comprises over 1,500 small islands, cays, and shoals surrounding the four main islands of Misool, Salawati, Batanta, and Waigeo, and the smaller island of Kofiau. The Raja Ampat archipelago straddles the Equator and forms part of the Coral Triangle which contains the richest marine biodiversity on earth. Administratively, the archipelago is part of the province of Southwest Papua. Most of the islands constitute the Raja Ampat Regency, which was separated from Sorong Regency in 2004. The regency encompasses around 70,000 square kilometres (27,000 sq mi) of land and sea, of which 8,034.44 km2 constitutes the land area and has a population of 64,141 at the 2020 Census. This excludes the southern half of Salawati Island, which is not part of this regency but instead constitutes the Salawati Selatan and Salawati Tengah Districts of Sorong Regency.",
                  moreInfo: URL(string: "https://en.wikipedia.org/wiki/Raja_Ampat_Islands"),
                  rating: "5.0"),
        
        ListItems(imageLogo: "pulauKomodo",
                  imageItems: ["pulauKomodoDetall1", "pulauKomodoDetail2", "pulauKomodoDetail3"],
                  destination: "Komodo Island",
                  location: "East Nusa Tenggara, Indonesia",
                  infoDestination: "Komodo (Indonesian: Pulau Komodo) is one of the 17,508 islands that comprise the Republic of Indonesia. It is particularly notable as the habitat of the Komodo dragon, the largest lizard on Earth, which is named after the island. Komodo Island has a surface area of 291 square kilometres, and had a human population of about 1,800 in 2020. Komodo is part of the Lesser Sunda chain of islands and forms part of the Komodo National Park. It is a popular destination for diving. Administratively, it is part of the Komodo District (which also includes Rinca Island and numerous other islands off the west coast of Flores, together with part of the western portion of Flores itself), forming part of West Manggarai Regency within the province of East Nusa Tenggara. Komodo is part of the Lesser Sunda chain of islands and forms part of the Komodo National Park. It lies between the substantially larger neighboring islands Sumbawa to the west and Flores to the east. The island's surface area covers 291 square kilometres. Komodo Island is home to the Komodo Dragon, the largest lizard on earth.",
                  moreInfo: URL(string: "https://en.wikipedia.org/wiki/Komodo_(island)#:~:text=Komodo%20(Indonesian%3A%20Pulau%20Komodo),is%20named%20after%20the%20island."),
                  rating: "4.5"),
        
        ListItems(imageLogo: "borobudur",
                  imageItems: ["borobudurDetail1", "borobudurDetail2", "borobudurdetail3"],
                  destination: "Borobudur Temple",
                  location: "Central Java, Indonesia",
                  infoDestination: "Borobudur, also transcribed Barabudur (Indonesian: Candi Borobudur, Javanese: ꦕꦤ꧀ꦝꦶꦧꦫꦧꦸꦝꦸꦂ, romanized: Candhi Barabudhur) is a 9th-century Mahayana Buddhist temple in Magelang Regency, not far from the city of Magelang and the town of Muntilan, in Central Java, Indonesia. Constructed of gray andesite-like stone, the temple consists of nine stacked platforms, six square and three circular, topped by a central dome. It is decorated with 2,672 relief panels and originally 504 Buddha statues. The central dome is surrounded by 72 Buddha statues, each seated inside a perforated stupa. The monument guides pilgrims through an extensive system of stairways and corridors with 1,460 narrative relief panels on the walls and the balustrades. Borobudur has one of the world's most extensive collections of Buddhist reliefs. Built during the reign of the Sailendra Dynasty, the temple design follows Javanese Buddhist architecture, which blends the Indonesian indigenous tradition of ancestor worship and the Buddhist concept of attaining nirvāṇa. The monument is a shrine to the Buddha and a place for Buddhist pilgrimage. Evidence suggests that Borobudur was constructed in the 8th century and subsequently abandoned following the 14th-century decline of Hindu kingdoms in Java and the Javanese conversion to Islam.[4] Worldwide knowledge of its existence was sparked in 1814 by Sir Thomas Stamford Raffles, then the British ruler of Java, who was advised of its location by native Indonesians. Borobudur has since been preserved through several restorations. The largest restoration project was completed at 1983 by the Indonesian government and UNESCO, followed by the monument's listing as a UNESCO World Heritage Site.",
                  moreInfo: URL(string: "https://en.wikipedia.org/wiki/Borobudur"),
                  rating: "5.0"),
        
        ListItems(imageLogo: "danauToba",
                  imageItems: ["danautobaDetails1", "danautobaDetails2", "danautobaDetails3"],
                  destination: "Toba Lake",
                  location: "North Sumatera, Indonesia",
                  infoDestination: "Lake Toba (Indonesian: Danau Toba, Toba Batak: ᯖᯀᯬ ᯖᯬᯅ; romanized: Tao Toba) is a large natural lake in North Sumatra, Indonesia, occupying the caldera of a supervolcano. The lake is located in the middle of the northern part of the island of Sumatra, with a surface elevation of about 900 metres (2,953 ft), the lake stretches from 2.88°N 98.52°E to 2.35°N 99.1°E. The lake is about 100 kilometres (62 miles) long, 30 kilometres (19 mi) wide, and up to 505 metres (1,657 ft) deep. It is the largest lake in Indonesia and the largest volcanic lake in the world. Toba Caldera is one of twenty geoparks in Indonesia, and was recognised in July 2020 as one of the UNESCO Global Geoparks. Lake Toba is the site of a supervolcanic eruption estimated at VEI 8 that occurred 69,000 to 77,000 years ago, representing a climate-changing event. Recent advances in dating methods suggest a more accurate identification of 74,000 years ago as the date. It is the largest-known explosive eruption on Earth in the last 25 million years. According to the Toba catastrophe theory, it had global consequences for human populations; it killed most humans living at that time and is believed to have created a population bottleneck in central east Africa and India, which affects the genetic make-up of the human worldwide population to the present. More recent studies have cast doubt on this theory and found no evidence of substantial changes in global population.",
                  moreInfo: URL(string: "https://en.wikipedia.org/wiki/Lake_Toba#:~:text=The%20lake%20is%20located%20in,metres%20(1%2C657%20ft)%20deep."),
                  rating: "5.0"),
        
        ListItems(imageLogo: "gunungBromo",
                  imageItems: ["bromoDetails1", "bromoDetails2", "bromoDetails3"],
                  destination: "Mount Bromo",
                  location: "East Java, Indonesia",
                  infoDestination: "The Bromo (Javanese: ꦧꦿꦩ), or Mount Bromo (Javanese: ꦒꦸꦤꦸꦁ​ꦧꦿꦩ Pegon: ڮنڠ برومو‎, romanized: Gunung Bromo) is an active somma volcano and part of the Tengger mountains, in East Java, Indonesia. At 2,329 meters (7,641 ft) it is not the highest peak of the massif, but is the most active and famous. The area is one of the most visited tourist destinations in East Java, and the volcano is included in the Bromo Tengger Semeru National Park. The name Bromo comes from the Javanese pronunciation of Brahma, the Hindu god of creation. At the mouth of the crater, there is an idol of Ganesha, the Hindu god of wisdom which is being worshipped by the Javanese Hindus. Mount Bromo is located in the middle of a plain called sea of sands (Javanese: Segara Wedi or Indonesian: Lautan Pasir), a nature reserve that has been protected since 1919. A typical way to visit Mount Bromo is from the nearby mountain village of Cemoro Lawang. From there it is possible to walk to the volcano in about 45 minutes, but it is also possible to take an organized jeep tour, including stops at the viewpoint of Mount Penanjakan (2,770 m (9,090 ft)) (Indonesian: Gunung Penanjakan). The sights on Mount Penanjakan can also be reached on foot in about two hours. Depending on the level of volcanic activity, the Indonesian Center for Volcanology and Disaster Mitigation sometimes issues a warning not to visit Mount Bromo. The neighboring Mount Batok is often mistaken as Mount Bromo due to its prominence in the caldera, and its position in front of the more flat Bromo crater as viewed from their most popular viewpoints along the northern rim.",
                  moreInfo: URL(string: "https://en.wikipedia.org/wiki/Mount_Bromo"),
                  rating: "5.0")
    ]
    @Published var newDestinations: [ListItems] = [
    ListItems(imageLogo: "puriBesakih",
              imageItems: ["puriBesakihDetail1", "puriBesakihDetail2", "puriBesakihDetail3"],
              destination: "Besakih Temple",
              location: "Bali, Indonesia",
              infoDestination: "esakih Temple (Balinese: ᬧᬸᬭ​ᬩᭂᬲᬓᬶᬄ) is a pura complex in the village of Besakih on the slopes of Mount Agung in eastern Bali, Indonesia. It is the most important, largest, and holiest temple of Balinese Hinduism, and one of a series of Balinese temples. Perched nearly 1000 meters up the side of Gunung Agung, it is an extensive complex of 23 separate but related temples with the largest and most important being Pura Penataran Agung. The temple is built on six levels, terraced up the slope. The entrance is marked by a candi bentar (split gateway), and beyond it, the Kori Agung is the gateway to the second courtyard. The precise origins of the temple are unclear but its importance as a holy site almost certainly dates from prehistoric times. The stone bases of Pura Penataran Agung and several other temples resemble megalithic stepped pyramids, which date back at least 2,000 years. It was certainly used as a Hindu place of worship from 1284 when the first Javanese conquerors settled in Bali. By the 15th century, Besakih had become a state temple of the powerful Gelgel dynasty.",
              moreInfo: URL(string: "https://en.wikipedia.org/wiki/Besakih_Temple"),
              rating: "5.0"),
    
    ListItems(imageLogo: "rinjani",
              imageItems: ["rinjaniDetail1", "rinjaniDetail2","rinjaniDetail3"],
              destination: "Mount Rinjani",
              location: "Lombok Island, Indonesia",
              infoDestination: "Mount Rinjani (Indonesian: Gunung Rinjani, Sasak: Gunong Rinjani) is an active volcano in Indonesia on the island of Lombok. Administratively the mountain is in the Regency of North Lombok, West Nusa Tenggara (Indonesian: Nusa Tenggara Barat, NTB). It rises to 3,726 metres (12,224 ft), making it the second highest volcano in Indonesia. It is also the highest point in the Indonesian province of West Nusa Tenggara. Adjacent to the volcano is a 6-by-8.5-kilometre (3.7 by 5.3 mi) caldera, which is filled partially by the crater lake known as Segara Anak or Anak Laut (Child of the Sea), due to the color of its water, as blue as the sea (laut). This lake is approximately 2,000 metres (6,600 ft) above sea level and estimated to be about 200 metres (660 ft) deep;[4] the caldera also contains hot springs. The lake and mountain are sacred to the Sasak people and Hindus, and are the site of religious rituals. UNESCO made Mount Rinjani Caldera a part of the Global Geoparks Network in April 2018.",
              moreInfo: URL(string: "https://en.wikipedia.org/wiki/Mount_Rinjani"),
              rating: "5.0"),
    
    ListItems(imageLogo: "pinkBeach",
              imageItems: ["pinkBeachDetail1", "pinkBeachDetail2", "pinkBeachDetail3"],
              destination: "Pink Beach",
              location: "Komodo Island, Indonesia",
              infoDestination: "Komodo (Indonesian: Pulau Komodo) is one of the 17,508 islands that comprise the Republic of Indonesia. It is particularly notable as the habitat of the Komodo dragon, the largest lizard on Earth, which is named after the island. Komodo Island has a surface area of 291 square kilometres, and had a human population of about 1,800 in 2020. Komodo is part of the Lesser Sunda chain of islands and forms part of the Komodo National Park. It is a popular destination for diving. Administratively, it is part of the Komodo District (which also includes Rinca Island and numerous other islands off the west coast of Flores, together with part of the western portion of Flores itself), forming part of West Manggarai Regency within the province of East Nusa Tenggara. Komodo is part of the Lesser Sunda chain of islands and forms part of the Komodo National Park. It lies between the substantially larger neighboring islands Sumbawa to the west and Flores to the east. The island's surface area covers 291 square kilometres. Komodo Island is home to the Komodo Dragon, the largest lizard on earth",
              moreInfo: URL(string: "https://en.wikipedia.org/wiki/Komodo_(island)"),
              rating: "5.0"),
    
    ListItems(imageLogo: "wayKambas",
              imageItems: ["wayKambasDetail1", "wayKambasDetail2", "wayKambasDetail3"],
              destination: "Way Kambas National Park",
              location: "Lampung, Indonesia",
              infoDestination: "Way Kambas National Park is a national park covering 1,300 km2 (500 sq mi) in Lampung province of southern Sumatra, Indonesia. It consists of swamp forest and lowland rain forest, mostly of secondary growth as result of extensive logging in the 1960s and 1970s. Despite decreasing populations, the park still has a few critically endangered Sumatran tigers, Sumatran elephants and Sumatran rhinoceroses. It also hosts over 400 bird species.Way Kambas National Park. Threats to the park are posed by poaching and habitat loss due to illegal logging. Conservation efforts include patrolling and the establishment of the Sumatran Rhino Sanctuary and the Elephant Conservation Centre.",
              moreInfo: URL(string: "https://en-m-wikipedia-org.translate.goog/wiki/Way_Kambas_National_Park?_x_tr_sl=en&_x_tr_tl=id&_x_tr_hl=id&_x_tr_pto=tc"),
              rating: "5.0"),
    
    ListItems(imageLogo: "ijen",
              imageItems: ["ijenDetail1", "ijenDetail2", "ijenDetail3"],
              destination: "Mount Ijen",
              location: "East Java, Indonesia",
              infoDestination: "The Ijen volcano complex is a group of composite volcanoes located on the border between Banyuwangi Regency and Bondowoso Regency of East Java, Indonesia. It is known for its blue fire, acidic crater lake, and labour-intensive sulfur mining.It is inside an eponymous larger caldera Ijen, which is about 20 kilometres (12 mi) wide. The Gunung Merapi stratovolcano is the highest point of that complex. The name Gunung Merapi means 'mountain of fire' in the Indonesian language; Mount Merapi in central Java and Marapi in Sumatra have the same etymology. Ijen Geopark stretches across It is located across the entire regency which is specifically in the Mount Ijen area, Pulau Merah Beach, and Alas Purwo National Park. It has various geological, biological, and cultural sites. It became part of UNESCO Global Geoparks at the 10th conference held in Marrakesh. West of Gunung Merapi is the Ijen volcano, which has a one-kilometre-wide (0.62 mi) turquoise-coloured acidic crater lake. The lake is the site of a labour-intensive sulfur mining operation, in which sulfur-laden baskets are carried by hand from the crater floor. The work is paid well considering the cost of living in the area, but is very onerous. Workers earn around US$13 per day and, once out of the crater, still need to carry their loads of sulfur chunks about three kilometers to the nearby Paltuding Valley to get paid.",
              moreInfo: URL(string: "https://en.wikipedia.org/wiki/Ijen"),
              rating: "5.0")
    
    ]
    @Published var categoriesList: [CategoriesModel] = [
    CategoriesModel(Image: "mountain.2.fill", name: "Mountain"),
    CategoriesModel(Image: "figure.hiking", name: "Hiking"),
    CategoriesModel(Image: "figure.open.water.swim", name: "Beach"),
    CategoriesModel(Image: "leaf.fill", name: "Park"),
    CategoriesModel(Image: "figure.fishing", name: "River"),
    
    ]
    
    init() {
        let items: [String] = ["puriBesakihAdvertisement", "rinjaniAdvertisement", "toraja", "wayKambasAdvertisement"]
        
        advertisement.append(contentsOf: items)
    }
    
}
