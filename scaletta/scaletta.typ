//  --- Standard preamble

#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.5cm),
)
#set text(
  font: "New Computer Modern",
  size: 10pt
)
#set par(
  justify: true,
  leading: 0.52em,
)



= Scaletta workshop
\

#enum(
    start: 1,
    [(10 min) *Introduzione*
        - Che cos'è un dato? e un database? ...
        - Ciclo di vita del dato: _raccolta #sym.arrow.r archiviazione #sym.arrow.r elaborazione_
        - Categorie di database: relazionali vs non relazionali
        - Cenni storici sui database relazionali: come siamo arrivati al relazionale?
    ],
    [(20 min) *Modello relazionale*:
        - Struttura logica: tabelle, chiavi, relazioni, ...
        - Vincoli di integrità, paradigma ACID
        - vantaggi: consistenza garantita, linguaggio dichiarativo (SQL), integrità
        - _Problemi_: scalabilità verticale, rigidità dello schema, performance
    ],
    [(20 min) *Modello relazionale, _Distribuito_*
        - Come funziona un database relazionale distribuito (e.g. HA PostgreSQL)
        - Limiitazioni
        - _CAP theorem_
        - Considerazioni su i problemi di networking e bandwidth
    ],
    [(35 min) *Modelli non relazionali*
    - Cambiare paradigma: NoSQL, quando e perché
    - Cenni sulla diversità all'interno del mondo NoSQL
    - esempi di database NoSQL: MongoDB, QuestDB
    ],
)
\- \- \- break  15 min- - -

#enum(
   start: 5,
    [(25 min) *Small live demo*
    ],

   [(45 min) *Dove salvare i dati?*
    - Scelta dello storage appropriato:
        - locale vs distribuito
    - File system distribuiti: concetti di base:
        - Replica, ridondanza, resilienza
        - Che succede in caso di guasto?
    - Esempi: perhcè NFS non è un file system distribuito. CEPH
   ],
    [(10 min) *Domande?*]
)



Totale minuti: 180
