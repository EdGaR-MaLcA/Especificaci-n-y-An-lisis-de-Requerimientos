Feature: HU39: Como buscador de trabajo, quiero acceder a cursos de capacitación de las aptitudes que me hacen falta para aplicar a la oferta laboral que deseo
    Scenario: E01: No cuento con todos los requisitos
    CA01:
        Given que me encuentro en la información de una oferta laboral
        When se verifica que mis aptitudes y conocimientos no concuerdan con los requisitos
        Then se mostrará el mensaje = "Requisitos Incompletos"
        And se habilita la opción [llevar curso del requisito(s) faltante(es)] 
Examples:
    | mensaje                   | opción                                    |
    | Requisitos Incompletos    | llevar curso del requisito(s) faltante(es)|
    
Feature: HU39: Como buscador de trabajo, quiero acceder a cursos de capacitación de las aptitudes que me hacen falta para aplicar a la oferta laboral que deseo
    Scenario: E02: Cuento con todos los requisitos
    CA02:
        Given que me encuentro en la información de una oferta laboral
        When se verifica que mis aptitudes y conocimientos concuerdan con los requisitos
        Then se mostrará el mensaje = "Requisitos Cumplidos"
        And se habilita la opción [Postular a oferta Laboral] 
Examples:
    | mensaje                 | opción                   |
    | Requisitos Cumplidos    | Postular a oferta Laboral|
