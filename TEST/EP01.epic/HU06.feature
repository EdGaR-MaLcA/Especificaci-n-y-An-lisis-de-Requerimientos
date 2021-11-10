Feature: HU06: Como buscador de trabajo, quiero actualizar mi ubicación para que las ofertas aparezcan de acuerdo a mi zona
	Scenario: E01: Ingresa una ubicación correcta
	CA01:
        Given que me encuentro en el formulario de cambio de perfil
        When ingreso una ubicación = "Jirón Perú 24" que se encuentre registrada en google maps 
        Then se actualiza mi ubicación
        And se mostrará el mensaje = "Ubicación agregada"
Examples:
|   Ubicación 		  |   Mensaje                       |	
|  Jirón Perú 24	  |  Ubicación agregada             |

Feature: HU06: Como buscador de trabajo, quiero actualizar mi ubicación para que las ofertas aparezcan de acuerdo a mi zona
    Scenario: E02: Ingresa una ubicación incorrecta
    CA02:
        Given que me encuentro en el formulario de cambio de perfil
        When ingreso una ubicación = "Jirón sadasdada" que no se encuentre registrada en google maps 
        Then aparece un mensaje = "No se pudo encontrar la ubicación" 
Examples:
|   Ubicación 		  |   Mensaje                            |	
|  Jiron sadasdada	  |  No se pudo encontrar la ubicación   |

