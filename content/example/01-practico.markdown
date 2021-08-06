---
title: "Bienvenido/a a R, RStudio y Github"
linktitle: "1: R, RStudio y Github"
date: "2021-08-09"
menu:
  example:
    parent: Ejemplos
    weight: 1
type: docs
toc: true
editor_options: 
  chunk_output_type: console
---



## 1. Github

Es un sistema de control de versiones en línea que rastrea los cambios de códigos, facilita la colaboración y el acceso abierto. En este curso será un programa esencial para el desarrollo tanto de clases como prácticos, por lo que en este práctico vamos a aprender a utilizarlo repasando aspectos básicos. Esto además será profundizado y detallado en clases.


### Ventajas:

Las principales ventajas son:

- Facilita el flujo del trabajo y la colaboración entre usuarios 

- Es de acceso abierto 

- Permite hacer seguimiento a los errores

- Tiene variedades de funciones y plataformas


Pero la plataforma central en el curso será **GitHub Classroom**


## 2. Github Classroom

Es una plataforma de Github que facilita la interacción y aprendizaje entre estudiantes y profesores. Esta plataforma la usaremos a lo largo del curso, principalmente porque permite estudiantes trabajen individual y colectivamente usando los repositorios de github. En esta plataforma entregarán sus trabajos, recibirán comentarios y retroalimentaciones pudiendo trabajar colaborativamente.

- Pasos para ingresar a Github classroom

1. Crear cuenta: 
1. Dirigirse al [Link](https://n9.cl/954ne ) 

<img src="../www-learn-R-uah/static/img/example/create.png" width="60%" />

1. Clickear en “Crea una cuenta”
1. Introduce tu correo electrónico 
1. Crea una contraseña
1. Introduce el nombre de usuario (similar a su nombre)
1. Clickear en Crear una cuenta

<img src="../www-learn-R-uah/static/img/example/capt.png" width="60%" />

1. Ve al correo electrónico que pusiste anteriormente 
1. Copia el código e introdúcelo en la página


{{< div "note" >}}
Recuerda que el correo que uses debe ser el mismo correo que usaste en pasos anteriores. [Ver tutorial 1](https://youtu.be/9YD-F6-ktes).
{{< /div >}}


## 3. Github Desktop

Esta aplicación es una versión de Github que puede ser instalada tanto en windows como en mac. Facilitando el uso de Github a través de la coordinación de los cambios locales y la plataforma.

a. Instalar Github Desktop

b. Dirigirse a [Link](https://desktop.github.com/) 

<img src="../www-learn-R-uah/static/img/example/deskdown.png" width="60%" />

c. Crea una carpeta para los contenidos del curso

d. Vincula la dirección de la carpeta

{{< div "note" >}} 

#### Para Windows

   - Clickear en Download for Windows (64bit)

   - Ejecutar el archivo descargado

   - Introduce tu usuario y contraseña

#### Para Mac

   - Clickear en Download for macOS

   - Ejecutar el archivo descargado

   - Introduce tu usuario y contraseña
   
{{< /div >}}


## 4. Botones principales en GitHub Desktop:

- **Clone repository**: Copia un repositorio a tu computador

- **Create new repository**: crea un nuevo repositorio

- **Add existing repository**: incorpora un repositorio existente

<img src="../www-learn-R-uah/static/img/example/con1desk.png" width="60%" />

- **Open the repository in Rstudio**: Abre todo el proyecto en Rstudio

- **View the files of your repository in explorer**: Muestra los archivos en la carpeta que se encuentra

- **Open the repository on Github**: abre el repositorio en la página

- **Commit to master**: forma de guardar los cambios

- **Push origin**: manda los cambios al repositorio en línea

<img src="../www-learn-R-uah/static/img/example/con2desk.jpg" width="60%" />


## 5. Conceptos claves de Github

- **Repositorios**: Es donde se alberga el trabajo, como una carpeta que contiene todos los archivos y el historial de cambios realizados. Estos se almacenan en la nube

- **Cloning**: Los repositorios pueden clonarse creando copias locales que extraen toda la información y antiguas versiones del repositorio. Después se puede ir subiendo los cambios para sincronizar la copia local y la copia de github.

- **Commit**: Es la forma de guardar el estado de tu proyecto, como una captura en la que se deja un mensaje informativo

- **Push**: Esta es la forma en la que se puede agregar ( _subir_ ) los cambios locales al repositorio de Github.

- **README**: Se utiliza a modo de presentación o introducción de los repositorios.

- **Pull**: Esta es la forma en la que se puede agregar ( _bajar_ ) los cambios del repositorio de Github al repositorio local.

#### Flujo de trabajo colectivo y de acceso abierto

- **Forks**: Es otra forma de copiar un repositorio, permitiendo hacer cambios sin afectar al proyecto original.

- **Pull requests**: Es una forma de solicitar que sean incorporados los cambios que has hecho desde un repositorio local, al repositorio original.

<img src="../www-learn-R-uah/static/img/example/concepclav.png" width="60%" />

## 5. Learn-R-UAH

### Pasos para las dinámicas del curso

1. Recibir una tarea 

2. Ingresa el [link](https://classroom.github.com/classrooms/86887318-learn-r-uah-2021)

  a. El link contiene la tarea, ustedes deben aceptar la tarea la cual creará un _**repositorio**_ que contendrá la *información* y las *instrucciones* de la tarea.
  
<img src="../www-learn-R-uah/static/img/example/ingrestarea.png" width="60%" />
  
  b. Para eso deben ir a _**GitHub Desktop**_, _**clonar** el respositiorio desde internet_.
  
<img src="../www-learn-R-uah/static/img/example/paso2tarea.png" width="60%" />
  
  c. Luego deben escoger el repositorio de la tarea, escoger la carpeta en la que se encontrará y clonarlo
  
<img src="../www-learn-R-uah/static/img/example/paso3tarea.png" width="60%" />
  
  d. Después deben abrir el repositorio creado a través de _**RStudio**_, ahí verán el mismo contenido pero en un archivo _**.md**_ 

<img src="../www-learn-R-uah/static/img/example/paso4tarea.png" width="60%" />
  
3. Resolver una tarea

  a. La tarea se encuentra en un archivo llamado `*README*` con información de los conceptos básicos y el flujo de GitHub, deben leerlo detalladamente.
 
  b. Una vez leido deberán ir a Tarea 0 y responder las preguntas correspondientes
  
<img src="../www-learn-R-uah/static/img/example/paso5tarea.png" width="60%" />
  
  
4. Subir una tarea

  a. Una vez listo, deberán _**subir**_ la tarea al repositorio remoto a través de GitHub Desktop
  
<img src="../www-learn-R-uah/static/img/example/paso6tarea.png" width="60%" />

5. Recibir comentarios 

  a. Les llegará un correo con los comentarios y retroalimentación de su tarea

## 6. Learn R Youtube

Recuerden que el [video de asociado a este práctico](https://www.youtube.com/watch?v=Zj8yL-nx9vM) y muchos más podrán encontrarlos en el [canal de youtube del curso](https://www.youtube.com/channel/UCqBUeqBttVjS6h8fawK8sWg)

<div class="embed-responsive embed-responsive-16by9">
<iframe class="embed-responsive-item" src="https://www.youtube.com/watch?v=Zj8yL-nx9vM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>


## 7. Reporte de progreso
