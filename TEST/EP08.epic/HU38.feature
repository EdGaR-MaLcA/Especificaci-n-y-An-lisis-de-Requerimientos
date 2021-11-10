Feature: HU38: Como empleador, quiero recibir las solicitudes de postulantes  que cumplan con los requisitos para reducir el tiempo de contratación
    Scenario: E01: Ingreso los requisitos con claridad
    CA01:
        Given que en el formulario de ingreso de oferta laboral
        When escribo claramente los requisitos
        Then se mostrará el mensaje = "Se completaron los requisitos adecuadamente"
        And mi oferta solo aparecerá a quienes cumplan con estos      
        And se habilita la opción [verificar requisitos completados] 
Examples:
    | mensaje                                          | opción                                    |
    | Se completaron los requisitos adecuadamente      | Publicar ofeta                            |
    


Feature: HU38: Como empleador, quiero recibir las solicitudes de postulantes  que cumplan con los requisitos para reducir el tiempo de contratación
    Scenario: E02: ingreso incorrecto de requisitos
    CA02:
        Given en el formulario de ingreso de oferta laboral
        When no completo el recuadro de requisitos
        Then mostrará un mensaje ="No se completaron los requisitos adecuadamente"
        And mi oferta aparecerá a cualquier usuario
        And se habilita la opción [Editar Oferta] para ingresar los requisitos
Examples:
    | mensaje                                           | opción                   |
    | No se completaron los requisitos adecuadamente    | Editar oferta            |

Feature: HU38: Como empleador, quiero recibir las solicitudes de postulantes  que cumplan con los requisitos para reducir el tiempo de contratación
    Scenario: E02: ingreso incorrecto de requisitos
    CA03:
        Given que en el formulario de ingreso de oferta labora
        When no describo con claridad los requisitos
        Then mostrará un mensaje = "No se describieron los requisitos adecuadamente"
        And mi oferta aparecerá a cualquier usuario
        And se habilita la opción [Editar oferta] para ingresar específicamente cada requisito 
Examples:
    | mensaje                                            | opción                   |
    | No se describieron los requisitos adecuadamente    | Editar oferta            |

______________________________________________________________