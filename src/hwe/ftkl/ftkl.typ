
#let FTKL(
  projekt: "",
  abgabe: "",
  name: "Samuel Findenig",
  klasse: "2AHEL",
  body
) = {
  let margin = (
          top: 2.5cm,
          bottom: 2.5cm,
          right: 1cm,
          left: 1.5cm
        )
  set page(margin: margin)
  set text(font: "Arial")

  grid(align: center,
  columns: 1fr,
  rows: (2cm, auto, auto, 6cm, auto, auto, 9cm,auto,),
  row-gutter: 5pt,
      
      
    [],
    [= #projekt],
    [#line(length: 60%)],
    [#abgabe],

    [= #name],
    [== #klasse],
    [],
    [#image("image.svg", width: 50%)],
    [= HWE - FTKL]
  )
 





  pagebreak()

  set page(footer: [
    #table(
      columns: (1fr, 1fr, 1fr), 
      stroke: none,
      [#projekt],
      [#align(center)[
        #context counter(page).display((current, total) => [Seite #current von #total ], both: true)]],
      [#align(right)[#name\ #klasse]])
    
  ])
  

  body
}


