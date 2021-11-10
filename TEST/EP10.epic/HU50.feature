Feature: HU50: Como administrador, quiero desarrollar una línea de aprendizaje para que los postulantes vean sus progresos en los cursos
    Scenario: E01: El postulante ha ingresado a cursos
    CA01:
        Given que me encuentro en la sección de cursos
        When verifique que el postulante ="Jorge Guisese" está cursando algún curso = "Control y Análisis de Base de Datos"
        Then mostraré el progreso de este mediante el porcentaje de avance = "37%"
Examples:
    |Postulante   | curso                               | porcentaje de avance |
    |Jorge Guisese| Control y Análisis de Base de Datos | 37%                  |


Feature: HU50: Como administrador, quiero desarrollar una línea de aprendizaje para que los postulantes vean sus progresos en los cursos
    Scenario: E02: El postulante no ha ingresado a cursos
    CA02:
        Given que me encuentro en la sección de cursos
        When verifique que el postulante ="Jorge Guisese" no está escrito en ningún curso
        Then mostraré el mensaje = "Actualmente no está estudiando ningún curso" 
Examples:
    |Postulante   | mensaje                                     | 
    |Jorge Guisese| Actualmente no está estudiando ningún curso | 


