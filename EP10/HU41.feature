Feature: HU41: Como administrador, quiero recomendar cursos a los postulantes para que aumenten su probabilidad de aceptación de trabajo
    Scenario: E01: El usuario cuenta con favoritos
    CA01:
        Given que me encuentro en la sección de cursos
        When verifique que el usuario cuenta con una lista de ofertas laborales en la opción <Favoritos>
        Then se agregarán los cursos de capacitación de los requisitos faltantes para las ofertas de interés
        And se mostrarán las recomendaciones en la opción <Notificaciones>
        And se mostrará el mensaje = "Nuevos cursos sugeridos"
Examples:
    | Opción    | Opción         | mensaje                 |
    | Favoritos | Notificaciones | Nuevos cursos sugeridos |

Feature: HU41: Como administrador, quiero recomendar cursos a los postulantes para que aumenten su probabilidad de aceptación de trabajo
    Scenario: E02: El usuario no cuenta con favoritos
    CA02:
        Given que me encuentro en la sección de cursos
        When verifique que el usuario  no cuenta con una lista de ofertas laborales en la opción <Favoritos>
        Then se agregarán recomendaciones de cursos de acuerdo a su CV
        And se mostrarán las recomendaciones en la opción <Notificaciones>
        And se mostrará el mensaje = "Nuevos cursos sugeridos"
Examples:
    | Opción    | Opción         | mensaje                 |
    | Favoritos | Notificaciones | Nuevos cursos sugeridos |

