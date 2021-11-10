Feature: H29: Como empleador, quiero conocer la trayectoria académica de los postulantes a mi empresa para saber si cuentan con lo necesario para el puesto.
	Scenario: E01: Se muestra la trayectoria académica.
	CA01: 
		Given que me encuentro en el perfil del postulante = "Juan Perez"
		When me aparece su trayectoria académica
		Then se muestra una gráfica detallada del postulante en base a su perfil profesional
Examples:
	|Postulante|   Output                             |
	|Juan Perez|   Gráfica detallada del postulante   |

Feature: H29: Como empleador, quiero conocer la trayectoria académica de los postulantes a mi empresa para saber si cuentan con lo necesario para el puesto.
	Scenario: E02: No se muestra la trayectoria académica
	CA02:
Given que me encuentro en el perfil del postulante = "Rosa Chávez"
	When no aparece la trayectoria académica
	Then se advierte con un mensaje = "No hay información para generar el gráfico" 
Examples:
|Postulante  |   Mensaje                                   |	
|Rosa Chávez |   No hay información para generar el gráfico|
