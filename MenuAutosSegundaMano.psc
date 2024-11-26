Algoritmo MenuAutosSegundaMano
	// Declaración de variables
	Definir lista_autos Como Cadena
	Definir opcion1 Como Entero
	Definir auto Como Cadena
	Definir nueva_lista Como Cadena
	Definir contador, posicion, inicio, coma_posicion Como Entero
	Definir elemento Como Cadena
	lista_autos <- ''
	opcion1 <- 0
	Mientras opcion1<>5 Hacer
		Escribir 'Hecho por Raymundo Y Alberto'
		Escribir 'Menú de Opciones - Gestión de Autos'
		Escribir '1) Agregar un Auto'
		Escribir '2) Consultar Autos'
		Escribir '3) Modificar un Auto'
		Escribir '4) Eliminar un Auto'
		Escribir '5) Salir'
		Leer opcion1
		Según opcion1 Hacer
			1:
				Escribir 'Ingrese los datos del auto:'
				Escribir 'Marca:'
				Leer marca
				Escribir 'Motor:'
				Leer motor
				Escribir 'Modelo:'
				Leer modelo
				Escribir 'Estado:'
				Leer estado
				Escribir 'Kilometraje:'
				Leer kilometraje
				Escribir 'Potencia:'
				Leer potencia
				Escribir 'Precio:'
				Leer precio
				Escribir 'Color:'
				Leer color
				Escribir 'Número de Serie:'
				Leer numero_serie
				Escribir 'Año:'
				Leer anio
				auto <- marca+'|'+motor+'|'+modelo+'|'+estado+'|'+kilometraje+'|'+potencia+'|'+precio+'|'+color+'|'+numero_serie+'|'+anio
				Si lista_autos='' Entonces
					lista_autos <- auto
				SiNo
					lista_autos <- lista_autos+','+auto
				FinSi
				Escribir 'Auto agregado con éxito.'
			2:
				Si lista_autos='' Entonces
					Escribir 'No hay autos registrados.'
				SiNo
					Escribir 'Listado de Autos:'
					contador <- 1
					inicio <- 1
					coma_posicion <- 1
					Mientras coma_posicion>0 Hacer
						coma_posicion <- -1
						Para i<-inicio Hasta Longitud(lista_autos) Hacer
							Si Subcadena(lista_autos,i,i)=',' Y coma_posicion=-1 Entonces
								coma_posicion <- i
							FinSi
						FinPara
						Si coma_posicion>0 Entonces
							elemento <- Subcadena(lista_autos,inicio,coma_posicion-1)
							inicio <- coma_posicion+1
						SiNo
							elemento <- Subcadena(lista_autos,inicio,Longitud(lista_autos))
						FinSi
						Escribir contador, ') ', elemento
						contador <- contador+1
					FinMientras
				FinSi
			3:
				Si lista_autos='' Entonces
					Escribir 'No hay autos registrados.'
				SiNo
					Escribir 'Ingrese el número del auto que desea modificar:'
					Leer posicion
					nueva_lista <- ''
					contador <- 1
					inicio <- 1
					coma_posicion <- 1
					Mientras coma_posicion>0 Hacer
						coma_posicion <- -1
						Para i<-inicio Hasta Longitud(lista_autos) Hacer
							Si Subcadena(lista_autos,i,i)=',' Y coma_posicion=-1 Entonces
								coma_posicion <- i
							FinSi
						FinPara
						Si coma_posicion>0 Entonces
							elemento <- Subcadena(lista_autos,inicio,coma_posicion-1)
							inicio <- coma_posicion+1
						SiNo
							elemento <- Subcadena(lista_autos,inicio,Longitud(lista_autos))
						FinSi
						Si contador=posicion Entonces
							Escribir 'Ingrese los nuevos datos del auto:'
							Escribir 'Marca:'
							Leer marca
							Escribir 'Motor:'
							Leer motor
							Escribir 'Modelo:'
							Leer modelo
							Escribir 'Estado:'
							Leer estado
							Escribir 'Kilometraje:'
							Leer kilometraje
							Escribir 'Potencia:'
							Leer potencia
							Escribir 'Precio:'
							Leer precio
							Escribir 'Color:'
							Leer color
							Escribir 'Número de Serie:'
							Leer numero_serie
							Escribir 'Año:'
							Leer anio
							elemento <- marca+'|'+motor+'|'+modelo+'|'+estado+'|'+kilometraje+'|'+potencia+'|'+precio+'|'+color+'|'+numero_serie+'|'+anio
						FinSi
						Si nueva_lista='' Entonces
							nueva_lista <- elemento
						SiNo
							nueva_lista <- nueva_lista+','+elemento
						FinSi
						contador <- contador+1
					FinMientras
					lista_autos <- nueva_lista
					Escribir 'Auto modificado con éxito.'
				FinSi
			4:
				Si lista_autos='' Entonces
					Escribir 'No hay autos registrados.'
				SiNo
					Escribir 'Ingrese el número del auto que desea eliminar:'
					Leer posicion
					nueva_lista <- ''
					contador <- 1
					inicio <- 1
					coma_posicion <- 1
					Mientras coma_posicion>0 Hacer
						coma_posicion <- -1
						Para i<-inicio Hasta Longitud(lista_autos) Hacer
							Si Subcadena(lista_autos,i,i)=',' Y coma_posicion=-1 Entonces
								coma_posicion <- i
							FinSi
						FinPara
						Si coma_posicion>0 Entonces
							elemento <- Subcadena(lista_autos,inicio,coma_posicion-1)
							inicio <- coma_posicion+1
						SiNo
							elemento <- Subcadena(lista_autos,inicio,Longitud(lista_autos))
						FinSi
						Si contador<>posicion Entonces
							Si nueva_lista='' Entonces
								nueva_lista <- elemento
							SiNo
								nueva_lista <- nueva_lista+','+elemento
							FinSi
						FinSi
						contador <- contador+1
					FinMientras
					lista_autos <- nueva_lista
					Escribir 'Auto eliminado con éxito.'
				FinSi
			5:
				Escribir 'Saliendo del programa. ¡Adiós!'
			De Otro Modo:
				Escribir 'Opción no válida. Intente de nuevo.'
		FinSegún
	FinMientras
FinAlgoritmo
