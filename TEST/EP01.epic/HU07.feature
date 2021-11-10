Feature: HU07: Como buscador de trabajo, quiero actualizar mi desarrollo profesional para obtener ofertas que se adecuen a mi rango completo de conocimiento
	Scenario: E01: Ingresa información correcta
	CA01:
        Given que me encuentro en el formulario de actualizar mi perfil
        When agregó una aptitud = "Informática"
        And realizó la prueba de validación que ofrece la plataforma
        And el resultado es = "Aprobado"
        Then se actualizan mis habilidades y conocimientos
        And se mostrará el mensaje = "Aptitud agregada al perfil"
Examples:
|   Aptitud  		         |  resultado        |   Mensaje                     |	
|   Informática              |  Aprobada 	     |   Aptitud agregada al perfil  |

Feature: HU07: Como buscador de trabajo, quiero actualizar mi desarrollo profesional para obtener ofertas que se adecuen a mi rango completo de conocimiento
    Scenario: E02: Ingresa información incorrecta
    CA02:
        Given que me encuentro en el formulario de actualizar mi perfil
        When agregó una aptitud = "Informática"
        And realizó  la prueba de validación que ofrece la plataforma
        And el resultado es = "Desaprobado"
        Then salta un mensaje= "usted no cuenta con los conocimientos ingresados"
        And se mostrará el mensaje = "Aptitud no agregada"
Examples:
|   Aptitud  		         |  Resultado            |   Mensaje                       |	Mensaje                                       |	
|   Informática              |  Desaprobado 	     |   Aptitud no agregada           | usted no cuenta con los conocimientos ingresados | 
