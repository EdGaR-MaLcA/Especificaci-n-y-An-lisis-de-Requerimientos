Feature: HU12: Como buscador de trabajo, quiero tener un chat privado con un miembro de la empresa para contactar fácilmente con ella
	Scenario: E01: Ingresa comentarios relacionados al tema de postulación
	CA01:
        Given que me encuentro en el chat con la empresa
        When envío oraciones que tienen que ver con el puesto laboral = "Cuándo serían mis días libres"
        Then se enviará correctamente el mensaje
        And mostrará el mensaje = "Se envió correctamente el mensaje"
Examples:
|   Oración   		                  | Mensaje                            |	
|   ¿Cuándo serían mis días libres?   |  Se envió correctamente el mensaje |

Feature: HU12: Como buscador de trabajo, quiero tener un chat privado con un miembro de la empresa para contactar fácilmente con ella
    Scenario: E02: Ingresa comentarios no relacionados al tema de la postulación
    CA02:
        Given que me encuentro en el chat con la empresa
        When envío oraciones que no tienen que ver con el puesto laboral = "Zzzzzzzzzzzzzz" menos de 3 veces
        Then se enviará una advertencia con un mensaje  "solo se puede interactuar con la empresa con el objetivo de hablar del puesto laboral"
Examples:
|   Oración		  | Mensaje                                                                                 |
|  Zzzzzzzzzzzzzz |  solo se puede interactuar con la empresa con el objetivo de hablar del puesto laboral  |

Feature: HU12: Como buscador de trabajo, quiero tener un chat privado con un miembro de la empresa para contactar fácilmente con ella
    Scenario: E02: Ingresa comentarios no relacionados al tema de la postulación
    CA03:
        Given que me encuentro en el chat con la empresa
        When envío oraciones que no tienen que ver con el puesto laboral = "Goku le gana" por tercera vez
        Then se bloqueará la comunicación con la empresa
        And se mostrará un mensaje adjunto = "Ha perdido la comunicación con esta empresa"
Examples:
|   Oración        | Mensaje                                       |	
|   Goku le gana   |  Ha perdido la comunicación con esta empresa  |
