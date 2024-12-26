#let wst_vorlage(
  kompetenz: "",
  name: "Samuel Findenig",
  klasse: "2AHEL",
  werkstatt: "",
  fachlehrer: "",
  datum: "00.00.0000",
  body
) = {
  let margin = (
          top: 1cm,
          bottom: 1cm,
          right: 1cm,
          left: 1.5cm
        )
  set page(margin: margin)
  table(    
      columns: (4cm, 2.8cm, 2.8cm, 2.8cm, 2.8cm, 2.8cm),
      stroke: 1pt,
      align: center,


      table.header(
        table.cell(
          inset: 0.5pt,
          colspan: 6, 
          image("wst1.png")
      ),

      align(left)[*Name*], [*Klasse*], [*Werkstatt*], [*Fachlehrer*], [*Datum*], [*Seitenanzahl*],
      align(left)[#name], [#klasse], [#werkstatt], [#fachlehrer], [#datum], 
      [#context counter(page).display((current, total) => [Seite #current von #total], both: true)],
      table.cell(colspan: 6, align(left)[*Übung/Kompetenz: *#kompetenz]),
    ),
    table.cell(
      colspan: 6, 
        align(start, pad(1em, body))
    )
  )
}

#show: wst_vorlage.with(
  name: "Max Mustermann",
  klasse: "XAHEL",
  fachlehrer: "ABC",
  werkstatt: "BSP",
  datum: "01.01.2000",
  kompetenz: "EL"
)

// Example Content
  #rect(height: 600pt, fill: luma(255))
