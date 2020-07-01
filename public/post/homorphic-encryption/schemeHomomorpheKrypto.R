library(nomnoml)
diagram <- "
[<frame>Homomorpher Kryptographie|
  [<abstract>Nachricht von Alice1||+ Publische Schlussel K]
  [<abstract>Nachricht von Alice2||+ Publische Schlussel K]
  [<abstract>Bob|| + Privatishce Schlussel DK]
  [<abstract>Drittenperson|| + Operation 0 und Speichern S]
  [Alice1]
  [<abstract>Alice1||+ PK und DK]
  [<abstract>Alice2||+ PK und DK]



  [Nachricht von Alice1]K -> [KryptetNachricht1]
  [Nachricht von Alice2]K -> [KryptetNachricht2]
  
  [KryptetNachricht1]--> [Drittenperson]
  [KryptetNachricht2] --> [Drittenperson]
  
  [Drittenperson] S--> [Speichern]
  
  [Drittenperson] O--> [MetaKryptetNachricht]
  [MetaKryptetNachricht] -->[Bob]
  [Bob] DK ->[MetaNachricht]
  
  [Alice1] <------> [Speichern]
  [Alice2] <------> [Speichern]

]
"

nomnoml(diagram,svg=TRUE, width = 1000, height =500)

