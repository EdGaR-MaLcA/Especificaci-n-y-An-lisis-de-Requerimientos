Feature: HU11: Como buscador de trabajo, quiero informarme sobre todas las etapas en las que se encuentra mi solicitud, para saber el progreso de esta
	Scenario: E01: Ya se ha aplicado a una oferta
	CA01:
        Given que me encuentro en el apartado de postulación a trabajo
        When he aplicado a una oferta laboral = "Contador" correctamente
        Then se muestra cómo ha avanzado mi postulación
Examples:
|   oferta laboral  | Output                             |	
|   Contador		|  Gráfica de avance de postulación  |

Feature: HU11: Como buscador de trabajo, quiero informarme sobre todas las etapas en las que se encuentra mi solicitud, para saber el progreso de esta
    Scenario: E02: Todavía no se ha aplicado a una oferta
    CA02:
        Given que me encuentro en el apartado de postulación a trabajo
        When no he aplicado a una oferta laboral 
        Then se muestra un mensaje de error = "Usted no ha aplicado a ningún puesto"
Examples:
|   Puestos aplicados	| Mensaje                               |	
|   Ninguno		        |  Usted no ha aplicado a ningún puesto |

