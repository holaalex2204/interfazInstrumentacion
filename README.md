# interfazInstrumentacion
El proyecto Monitoreo es un sitio web que muestra las mediciones almacenadas en una base de datos en forma gráfica y tabulada. Mientras que el proyecto Lectura Datos es un programa que lee la informaciòn de un puerto serial para poder obtener informaciòn de algunos sensores y guardarla en la base de datos para su posterior visualizaciòn
# Monitoreo
Esta parte del sistema nos permite visualizar la información almacenada en una BD, las tecnologías que usa son las siguientes:
-Grails 2.4.2 instalado. (Detalles de descarga e instalación en https://grails.org/download.html)<br /> 
-MySQL<br /> 
-JAVA<br /> 
-AngularJs (no es necesario instalarlo por que ya se incluyeron los .js necesarios)<br /> 
<br /> 
1. El primer paso para correr nuestro proyecto es crear una base de datos en MySQL llamada "instrumentacion", no es necesario crear tablas o realizar alguna configuración adicional, ya que cuando arranca la aplicación crea las tablasm, pero al finalizar las borra.<br /> 
2. Encontrar el archivo ..../Monitoreo/grails-app/conf/Datasource.groovy y modificar los parámetros de usuario y contraseña según la configuración de tu computadora.<br /> 
3. Ingresar a la consola o terminal y ubicarnos en el directorio del proyecto Monitoreo <br /> 
4. Levantar el servidor web con nuestra aplicación incluida con el  comando grails rA<br /> 
5. Abrir el navegador e ingresar a la dirección que especifica la consola al terminar de ejecutarse (puede tardar un poco)<br /> 
<br /> 
NOTA: En dado caso que quieras generar el War para usar el servidor de tu preferencia checar esta página: http://grails.github.io/grails-doc/2.1.0/ref/Command%20Line/war.html
<br /> 
#LecturaDatos
Este proyecto es una aplicación STAND ALONE que sirve para leer la información de un puerto serial usando una tarjeta MSP msp430g2553.
<br /> 
Requisitos:<br /> 
.RXTX (Instrucciones de instalación<br />  https://www.henrypoon.com/blog/2010/12/25/installing-rxtx-for-serial-communication-with-java/)
-JAVA<br /> 
-MySQL<br /> 

Instalación
-Instalar controladores de la tarjeta en el equipo (ubicados en Instrumentacion/ccs_setup_win32.exe)<br /> 

El primer paso es instalar los controladores, posteriormente usando Netbeans podemos abrir el proyecto LecturaDatos y modificar los parámetros de conexión a BD a utilizar.<br /> 
El siguiente paso es crear la base de datos (es posible crearla si corrremos la aplicación de Monitoreo).
Después ejecutamos en Netbeans y listo.<br /> 
Para detalles de que pines estan siendo leidos se puede consultar el archivo adjunto "Manual Sistema de Adquisición.docx" en la carpeta de instrumentación<br /> 
<br /> <br /> 
Suerte!
