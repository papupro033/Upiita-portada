

#let color= rgb("#800040")


#let upiita(title: none,
  alumno: (),
  profesor: [],
  grupo: none,
  fecha:[],
  doc,)={
    
let logo-left =block(radius: 5pt,width: 50%,height: 80pt)[
#grid(columns: (auto,1pt,1fr),
    column-gutter: 15pt,
    align: horizon,
    image("Logo_upiita_oro.png",width: 50pt),
    line(angle: 90deg, length: 100%, stroke: 2pt + color,),
    [
Unidad Profesional Interdisciplinaria en Ingenieria y Tecnologias Avanzadas
]
    )
  ]


let logo-right = image("ipn.png",width: 3cm)

place(
  top + left
)[
  #logo-left
]
place(
  top + right
)[
    #logo-right
  ]
v(4cm)
  
set align(center)

"Instituto Politecnico Nacional"
v(1pt)
"Unidad Profesional Interdisciplinaria en Ingenieria y Tecnologias Avanzadas"
v(1cm)
line(length:100%,stroke: color)

text(19pt,title)

line(length:100%,stroke: color)
v(2cm)
//Alumnos
text("Alumno: ",weight: "bold",style: "italic")
v(1pt)
for p in alumno [
  #p \
]
v(2cm)
//profesor
text("Profesor: ",weight: "bold",style: "italic")
v(1pt)
profesor
v(2cm)
//grupo
text("Grupo: ",weight: "bold",style: "italic")
v(1pt)
upper(grupo)

v(2cm)
text(fecha,style: "italic")
pagebreak()
doc
  }

// PRUEBA 
#show: upiita.with(title:[Titulo: texto],alumno: ("alumno1","alumno2"),profesor :[profesor doctor],grupo: [3bm8],fecha: [1 de enero de 2026])
