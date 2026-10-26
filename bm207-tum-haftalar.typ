// Bu dosya `notkit` tarafından üretilir; elle düzenleme.
#import "/_sablon/sablon.typ": ders
#import "/hafta-05/hafta-05.typ": icerik as hafta_05
#import "/hafta-06/hafta-06.typ": icerik as hafta_06
#let eski_hafta(yol, n) = for i in range(1, n + 1) { page(margin: 0pt, header: none, footer: none, image(yol, page: i, width: 100%)) }
#show: ders.with(birlesik: true, kapak: false)

#eski_hafta("/hafta-01/hafta-01.pdf", 12)
#eski_hafta("/hafta-02/hafta-02.pdf", 7)
#eski_hafta("/hafta-03/hafta-03.pdf", 5)
#eski_hafta("/hafta-04/hafta-04.pdf", 6)
#hafta_05
#pagebreak()
#hafta_06
