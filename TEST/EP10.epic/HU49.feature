Feature: HU49: Como administrador, quiero actualizar el catálogo de cursos para que los postulantes progresen profesionalmente con las nuevas tendencias laborales
    Scenario: E01: varía la demanda de cursos
    CA01:
        Given que me encuentro en la lista de cursos
        When la demanda de algunos cursos ha disminuido
        Then se eliminará el acceso a nuevos estudiantes a este curso = "Ética y Moral" para luego eliminarlo
Examples:
    | curso         |
    | Ética y Moral | 

Feature: HU49: Como administrador, quiero actualizar el catálogo de cursos para que los postulantes progresen profesionalmente con las nuevas tendencias laborales
    Scenario: E01: varía la demanda de cursos
    CA02:
        Given que me encuentro en la lista de cursos
        When la demanda de algunos cursos ="HTML y Dibujo Gráfico" ha aumentado
        Then se añadirán cursos similares ="CSS y Dibujo en 3D" y de nivel más avanzado = "JavaScript"
Examples:
    | cursos                | cursos similares   | cursos avanzados |
    | HTML y Dibujo Gráfico | CSS y Dibujo en 3D | JavaScript       |

Feature: HU49: Como administrador, quiero actualizar el catálogo de cursos para que los postulantes progresen profesionalmente con las nuevas tendencias laborales
    Scenario: E02: la demanda de todos los cursos sigue igual
    CA03:
        Given que me encuentro en la lista de cursos
        When la demanda permanece igual
        Then no se cambiará el listado de cursos
        But agregaré nuevos cursos ="Inglés Renacentista y Introducción a Agile"
Examples:
    | cursos                                      |
    | Inglés Renacentista  y Introducción a Agile | 
