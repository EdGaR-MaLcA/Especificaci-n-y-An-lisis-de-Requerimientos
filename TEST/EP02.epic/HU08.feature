Feature: HU08: Como buscador de trabajo, quiero agregar cierta preferencia a las ofertas de empleo publicadas por empresas  de mi agrado para que estas me aparezcan con más frecuencia que las de las demás.
	Scenario: E01: Selecciona una empresa para sus favoritos
	CA01:
        Given que me encuentro en el buscador de ofertas laborales
        When presione <agregar a favoritos> a una empresa = "Gloria" que ha publicado algún empleo = "Supervisor de Planta"
        Then  se muestra el mensaje = "Empresa agregada a favoritos"
        And se mostrarán más ofertas similares ="Ingeniero Agrícola" de esa empresa
Examples:
|button              |   Empresa                   |Empleo                |  Mensaje        	           | Ofertas similares |
|agregar a favoritos |   Gloria                    | Supervisor de Planta |  Empresa agregada a favoritos  |Ingeniero Agrícola |
