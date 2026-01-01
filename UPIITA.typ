

#let color= rgb("#800040")

#let upiita(title: none,
  alumno: (),
  profesor: [],
  grupo: none,
  fecha:[],
  doc,)={
set text(size: 12pt)
let a_var=none
let a_var =if alumno.len() >1{
  "Alumnos"
}else{
  "Alumno"
}
let logo-left =block(radius: 2pt,width: 60%,height: 50pt)[
#grid(columns: (auto,1pt,1fr),
    column-gutter: 15pt,
    align: horizon,
    //image("ipn.png",height:50%),
    image("Logo_upiita_oro.png",height:100%),
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
v(8cm)
  
set align(center)

//line(length:100%,stroke: color)
align(left)[
    #set par(leading: 0.25em)
    #upper(text(26pt,title,weight:"bold",font: "OpenSymbol",tracking:0.5pt)
    )
  
    #line(length:100%,stroke: 2pt + color)
  ]
  align(right)[
    #text(profesor,weight:"bold", font:"OpenSymbol",spacing: 200%)
  ]

v(8cm)

grid(
  columns: (1fr, 1fr), // Dos columnas de igual ancho
  align: (left, right), // Primera a la izquierda, segunda a la derecha
  text(a_var,weight: "bold",style: "italic"),
  text("Profesor",weight: "bold",style: "italic")
)
line(length:100%,stroke: 1pt + color)
grid(
  columns: (1fr, 1fr), // Dos columnas de igual ancho
  align: (left, right), // Primera a la izquierda, segunda a la derecha
  for p in alumno [#p \ ],
  text(profesor)
)

//grupo
  v(1fr)
    text("Grupo: "+upper(grupo),weight: "bold",style: "italic")
pagebreak()
doc
  }
//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
// PRUEBA 
#show: upiita.with(title:[Titulo: texto largo para ver y un poco mas ],alumno: ("Perez Vazquez Arroyo","Rulfo Juan","Cervantes Miguel"),profesor :[Dr. Adrian Octavio Ramirez Morales],grupo: [3bm8],fecha: [1 de enero de 2026])
