#set text(
  font: "Times New Roman",
  size: 12pt
)

#let title = [A fluid dynamic model for glacier flow]

#set page(
  paper: "a4",
  margin: (x: 1in, y: 1.5cm),
)
#set par(
  justify: true,
  leading: 0.52em,
)
#set heading(numbering: "1.")
#show "MMU": name => box[
  #box(image(
    "logo.jpg",
    height: 1em,
  ))
  #name
]
This report is embedded in the MMU project

MMU

#align(center, text(17pt)[
  *#title*
])

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \ 
    #link("malito:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("malito:doe@artos.edu")
  ]
)

#align(center)[
  #set par(justify: false)
  *Abstract* \
  #lorem(80)
]
// #emoji.face
// #show: rest => columns(2, rest)
// = Abstract

= Chapter 1
==  Introduction
In this report, we will explore the various factors that influence 
fluid dynamics in glaciers and how they contribute to the formation and behavior of these natural structures.
+ The climate
  - Temperature
  - Precipitation
+ The topography
+ The geology

Glaciers as the one shown in @glaciers will cease to exist if we don't take action soon!

//this is a funtion in typst ( use '#' ), the function can nest other
//functions to form a block.
#figure(
  image("mando.jpg", width: 70%),
  caption: [
    *_Glaciers_ form an important part of the earth's climate system.*
  ],
)<glaciers>
// this is an error I've encountered may coz of the file type .bib
// = Methods
// We follow the glacier melting models established in @glacier-melt
// #bibliography("bibl.bib")<glacier-melt>

//Maths
== Methods 
We follow the glacier melting models.

The equation defines the glacial flow rate equation: 
$ Q = rho A v + "time offset" $
// rho is a Greek word. 
// to show multiplication add a space between the words, A v (Av)
Total displaced soil by glacial flow:
$ 7.32 beta + 
  sum_(i=0)^nabla Q_i / 2 $
// to add a subscript or variable type a_character and then subscript
// similarly use ^ to add a superscript

// adding a parenthesis
$ 7.32 beta + 
  sum_(i=0)^nabla
  (Q_i (a_i - epsilon)) / 2
 $

// adding vectors
$ v := vec(x_1, x_2, x_3) $

// there's lots of math function, but you should checkout the typst doc for more info.
$ a arrow.squiggly b $

// there lots of content typst lets you insert eg. table, shapes and code blocks.

// #par(justify: true)[
//   = Background
//   In the case of glaciers, fluid dynamics principles can be used to understand how the movements and behavior of the ice is influenced by factors such as temperature, pressure, and the presence of other fluids (such as water).
// ]

// the set keyword allows you to apply mutliple styles.
#set par(justify: true)

== Background
  In the case of glaciers, fluid dynamics principles can be used to understand how the movements and behavior of the ice is influenced by factors such as temperature, pressure, and the presence of other fluids (such as water).

//  Here is a list of some functions that are commonly used in set rules:

//     text to set font family, size, color, and other properties of text
//     page to set the page size, margins, headers, enable columns, and footers
//     par to justify paragraphs, set line spacing, and more
//     heading to set the appearance of headings and enable numbering
//     document to set the metadata contained in the PDF output, such as title and author [I've added them at the top]
