Feature: HU43:  Como administrador, quiero filtrar a las empresas por su nivel de formalidad para que los postulantes se sientan seguros de postular.
    Scenario: E01: La empresa cumple con los estandares de formalidad
    CA01:
        Given me encuentro en el panel administrativo para ver las solicitudes para publicar ofertas de trabajo
        When analizo la información brindada por nuestra inteligencia artificial, verificó el nivel de formalidad
        Then si la empresa cumple los estándares de formalidad, se mostrará el mensaje = "Requisitos cumplidos"
        And su oferta es aceptada y publicada en la aplicación
        And se habilita la opción [revisar seguimiento de mi publicación] 
Examples:
    | mensaje                 | opción                       | opción                              |
    | Requisitos Cumplidos    | publicar la oferta aceptada  |revisar seguimiento de mi publicación|
   




Feature: HU43: Como administrador, quiero filtrar a las empresas por su nivel de formalidad para que los postulantes se sientan seguros de postular.
    Scenario: E02: ingreso incorrecto de requisitos

    CA02:
        Given me encuentro en el panel administrativo para ver las solicitudes para publicar ofertas de trabajo
        When analizo la información brindada por nuestra inteligencia artificial, verificó el nivel de formalidad
        Then si la empresa no cumple los estándares de formalidad, se mostrará el mensaje = "Requisitos Incumplidos"
        And su oferta es rechazada y no se publica
        And se habilita la opción [Ingresa nueva oferta laboral] 

Examples:
    | mensaje                 | opción                        |
    | Requisitos Incumplidos  | Ingresar nueva oferta laboral |




