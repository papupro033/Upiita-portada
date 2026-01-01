#let upiita(title: none,
  alumno: (),
  profesor: [],
  grupo: [],
  fecha:[],
  doc,)={
    
let logo-left = image("Logo_upiita_oro.png", width: 3cm)
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
line(length:100%,stroke: rgb("#800040"))

text(19pt,title)

line(length:100%,stroke: rgb("#800040"))
v(2cm)

text("Alumno: ",weight: "bold",style: "italic")
v(1pt)
alumno
v(2cm)

text("Profesor: ",weight: "bold",style: "italic")
v(1pt)
profesor
v(2cm)

text("Grupo: ",weight: "bold",style: "italic")
v(1pt)
grupo

v(2cm)
text(fecha,style: "italic")

pagebreak()
doc
  }
