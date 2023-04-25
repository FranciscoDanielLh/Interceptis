//
//  DocumentSampleData.swift
//  hackathon
//
//  Created by CEDAM18 on 25/04/23.
//

import Foundation

public struct Document: Hashable {
    var name: String
    var link: String
    var type: String
}

public var legalDocuments: [Document] = [
    Document(
        name: "Ley sobre la violencia de género",
        link: "http://semujeres.edomex.gob.mx/servicios/ley-general-de-acceso-de-las-mujeres-a-una-vida-libre-de-violencia#:~:text=La%20Ley%20General%20de%20Acceso,los%20principios%20y%20modalidades%20para",
        type: "link"
    ),
    Document(
        name: "Codigo penal",
        link: "https://www.congresocdmx.gob.mx/media/documentos/9cd0cdef5d5adba1c8e25b34751cccfdcca80e2c.pdf",
        type: "pdf"
    ),
    Document(
        name: "Ley sobre enjuiciamiento criminal",
        link: "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwi40Zjhs8X-AhX2M0QIHWA1BE0QFnoECA0QAQ&url=https%3A%2F%2Fwww.oas.org%2Fdil%2Fesp%2FLey_Enjuiciamiento_Criminal_14_setiembre_1882_Espana.pdf&usg=AOvVaw0KrJWiRowiKkDeLqyFsNnz",
        type: "pdf"
    ),
    Document(
        name: "Ley de represión y contrabando",
        link: "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwje0-z8s8X-AhX6IEQIHbvaAUEQFnoECBIQAw&url=https%3A%2F%2Fwww.boe.es%2Fbuscar%2Fact.php%3Fid%3DBOE-A-1995-26836%23%3A~%3Atext%3DPenalidad.-%2C1.%2C%252C%2520mercanc%25C3%25ADas%252C%2520g%25C3%25A9neros%2520o%2520efectos.&usg=AOvVaw1zWehmDpCdI8gFwThcrotE",
        type: "link"
    )
]

