
Funcion totalProductos <- GuardarProducto(nombres, cantidades, totalProductos, maxProd)

	Si totalProductos < maxProd Entonces
		Escribir "--- REGISTRAR NUEVO PRODUCTO ---"
		Escribir  "Ingresa el nombre del producto: "
		Leer  nombres[totalProductos]
		Escribir "Ingrese la cantidad inicial"
		Leer cantidades[totalProductos]
		totalProductos <- totalProductos +1
		Escribir "¡Producto guardado correctamente!"
	SiNo
		Escribir "[ERROR] El inventario está lleno"
	Fin Si
Fin Funcion

Funcion ActualizarCantidad(nombres, cantidades, totalProductos)
	Definir buscarNombre Como Caracter
	Definir restar Como Entero
	Definir encontrado Como Logico

	Escribir "--- ACTUALIZAR STOCK (VENTA) ---"
	Escribir "Ingresa el nombre del producto vendido: "
	Leer buscarNombre
	
	Para i<-1 Hasta totalProductos Hacer
		Si nombres[i] == buscarNombre Entonces
			Escribir "Cantidad actual en stock: ", cantidades[i]
			Escribir "Ingresa la cantidad que se vendio"
			Leer restar
			cantidades[i] = cantidades[i] - restar
			Escribir "¡Stock actualizado correctamente! Stock nuevo: ", cantidades[i]
            encontrado <- Verdadero			
		Fin Si
	Fin Para
	Si No encontrado Entonces
        Escribir "Producto no encontrado en el sistema."
    FinSi
	
Fin Funcion


Funcion opcion <- MostrarMenu
	Definir  opcion Como Entero
	Escribir "--- SISTEMA DE INVENTARIO: PAPELERÍA ---"
	Escribir "1. Guardar nuevo producto"
	Escribir "2. Actualizar cantidad"
	Escribir "3. Mostrar inventario"
	Escribir "4. Salir"
	Escribir "Elige una opción: "
	Leer opcion	
Fin Funcion


Algoritmo Inventario
	Definir maxProd Como Entero
	Dimensionar nombres[10]
	Dimensionar cantidades[10]
	Definir totalProductos, opc Como Entero
	
	maxProd <- 10
	totalProductos <- 1
	
	Repetir
		opc <- MostrarMenu()
		Segun opc Hacer
			1:
				totalProductos <- GuardarProducto(nombres, cantidades, totalProductos, maxProd)
			2:
				Si totalProductos > 1 Entonces
					ActualizarCantidad(nombres,cantidades,totalProductos)
				SiNo
					Escribir "No hay productos creados"
				Fin Si
				
			3:
				Escribir "Mostrando lista..."
			4: 
				Escribir "Cerrando Programa..."
			De Otro Modo:
				Escribir "Opcion no válida"
		Fin Segun
	Hasta Que opc == 4
	
	
	
	
	
FinAlgoritmo
