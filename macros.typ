#let plantilla = doc => {
    set page(numbering: "1")
    set text(font: "IBM Plex Sans", size: 11pt, lang: "es")
    set par(justify: true)
    set heading(numbering: "1.1")
    show raw.where(block: false): it => {
        set text(font: "IBM Plex Mono", size: 1.2em)
        it
    }
    show figure: set block(spacing: 2.5em)
    show figure.caption: c => [
        #text(weight: "bold", size: .9em)[#c.supplement #c.counter.display(c.numbering)#c.separator]
        #c.body
    ]
    show quote.where(block: true): set block(inset: (x: 1em))


    doc
}

#let appendix(body) = {
    set heading(numbering: "A.1", supplement: [Apéndice])
    counter(heading).update(0)
    show heading.where(level: 1): it => [
        Apéndice #counter(heading).display(it.numbering) #h(0.5em) #it.body
    ]
    body
}

#let etiqueta_plan() = {
    let plan = yaml("./plan.yaml")
    let n_área = 0
    let n_objetivo = 0
    let n_acción = 0
    for (i, área) in plan.enumerate() {
        n_área += 1
        let objetivos = ()
        for (j, objetivo) in área.objetivos.enumerate() {
            n_objetivo += 1
            let acciones = ()
            for (k, acción) in objetivo.acciones.enumerate() {
                n_acción += 1
                acciones.push((
                    número: [#n_acción],
                    breve: acción.breve,
                    acción: acción.acción,
                    responsables: acción.responsables,
                    semestres: acción.semestres,
                ))
            }
            objetivos.push((
                número: [#n_objetivo],
                etq: objetivo.etq,
                objetivo: objetivo.objetivo,
                acciones: acciones,
            ))
        }
        plan.at(i) = (
            número: [#n_área],
            etq: área.etq,
            área: área.área,
            objetivos: objetivos,
        )
    }
    plan
}
#let plan = etiqueta_plan()
