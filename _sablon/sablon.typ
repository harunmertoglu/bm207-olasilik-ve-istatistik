// notkit şablonu — profil: harun
// Bu dosya `notkit sablon-guncelle` ile profilden kopyalanır; elle düzenleme.
#import "@preview/cetz:0.5.3"
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "@preview/zap:0.6.0"

#let _profil = toml("/_sablon/profil.toml")
#let _ders = toml("/ders.toml")
#let _gorunum = _profil.at("gorunum", default: (:)) + _ders.at("gorunum", default: (:))
#let _akis = _profil.at("akis", default: (:))
#let _etiket = _profil.at("etiketler", default: (:))
#let _ek = _profil.at("ek", default: (:))
#let _sekil = _profil.at("sekil", default: (:))

#let _renk(ad) = rgb(_gorunum.at(ad))
#let _uzunluk(metin) = eval(metin)

/// Şekillerde kullanılan profil çizgisi.
#let cizgi = 1pt + _renk("ana_renk")

#let ders(hafta: none, birlesik: false, kapak: true, body) = {
  let kenar = _gorunum.at("kenar", default: (ust: "1.8cm", alt: "1.7cm", yan: "2.1cm"))
  let ana = _renk("ana_renk")
  let soluk = _renk("soluk_renk")
  let baslik = _ders.kod + " - " + _ders.ad
  set document(title: if hafta == none { baslik } else { baslik + " - Hafta " + str(hafta) })
  set page(
    paper: "a4",
    margin: (top: _uzunluk(kenar.ust), bottom: _uzunluk(kenar.alt), x: _uzunluk(kenar.yan)),
    numbering: "1",
    footer: context [
      #h(1fr)
      #text(size: 8pt, fill: soluk)[#_ders.kod · #_ders.ad]
      #h(1fr)
      #text(size: 8pt, fill: soluk)[#counter(page).display()]
    ],
  )
  set text(font: _gorunum.at("font", default: "Libertinus Serif"), size: _gorunum.at("punto", default: 10.5) * 1pt, lang: "tr")
  set par(justify: true, leading: 0.62em)
  set heading(numbering: "1.")
  show heading.where(level: 1): set text(size: 15pt, weight: "bold", fill: ana)
  show heading.where(level: 2): set text(size: 12pt, weight: "bold", fill: ana)
  show heading: it => {
    if it.level == 1 and _akis.at("ana_konu_yeni_sayfa", default: false) {
      context if counter(heading).get().first() > 1 { pagebreak(weak: true) }
    }
    v(0.65em)
    it
    v(0.15em)
  }
  // Birleşik dosya eski biçimli bir haftanın PDF'iyle başlıyorsa kapak o PDF'te zaten vardır.
  if kapak {
    align(center)[
      #text(size: 21pt, weight: "bold", fill: ana)[#_ders.kod]
      #v(0.25em)
      #text(size: 15pt, weight: "bold")[#_ders.ad]
    ]
    v(0.6cm)
  }
  body
}

#let _kutu(etiket, body) = {
  let ic = [*#etiket* #body]
  block(width: 100%, breakable: not _akis.at("ornek_bolunmez", default: false), ic)
}

#let ornek(no: none, body) = {
  let etiket = _etiket.at("ornek", default: "Örnek.")
  if no != none { etiket = etiket.trim(".", at: end) + " " + str(no) + "." }
  _kutu(etiket, body)
}
#let soru(body) = _kutu(_etiket.at("soru", default: "Soru."), body)
#let cozum(body) = _kutu(_etiket.at("cozum", default: "Çözüm."), body)
#let bilgi(body) = _kutu(_etiket.at("not", default: "Not."), body)

#let tanim(terim, body) = [*#terim:* #body]

#let sekil(id: none, baslik: none, genislik: 100%, body) = {
  if id == none or baslik == none { panic("sekil: id ve baslik zorunlu") }
  block(width: 100%, breakable: false, {
    context [#metadata((id: id, uc: "bas", konum: here().position())) <sekil>]
    figure(box(width: genislik, align(center, body)), caption: baslik)
    context [#metadata((id: id, uc: "son", konum: here().position())) <sekil>]
  })
}

#let ek(gerekce: none, body) = {
  if gerekce == none { panic("ek: gerekce zorunlu") }
  if _ek.at("pdfte_isaretle", default: false) {
    block(stroke: (left: 1.5pt + _renk("vurgu_renk")), inset: (left: 8pt), body)
  } else {
    body
  }
}

/// Profil renkleriyle zap devresi: #devre({ import zap: *; resistor(...) })
#let devre(body) = zap.circuit({
  let ana = _renk("ana_renk")
  cetz.draw.set-style(stroke: ana, zap: (
    variant: _sekil.at("devre_stili", default: "ieee"),
    stroke: 0.8pt + ana,
    foreground: ana,
    wire: (stroke: 0.8pt + ana),
    node: (fill: ana, stroke: 0.65pt + ana),
  ))
  body
})

/// Profil renkleriyle cetz tuvali: #tuval({ import cetz.draw: *; line(...) })
#let tuval(body) = cetz.canvas({
  cetz.draw.set-style(stroke: cizgi)
  body
})

/// Profil renkleriyle fletcher şeması: #sema(node(...), edge(...), ...)
#let sema(..args) = diagram(edge-stroke: 0.8pt + _renk("vurgu_renk"), node-stroke: cizgi, ..args)
