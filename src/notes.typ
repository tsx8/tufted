#let template-notes(content) = {
  show footnote: it => {
    if target() == "html" {
      html.elem("sup", attrs: (class: "footnote-ref"), it.numbering)
      html.elem("span", attrs: (class: "marginnote"), super(it.numbering) + [ ] + it.body)
    }
  }
  content
}
