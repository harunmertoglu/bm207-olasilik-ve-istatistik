// Kaynak: Olasılık ve İstatistik.pdf, s. 50 (HAFTA 5 başlığından itibaren)–58
#import "/_sablon/sablon.typ": *

#let icerik = [
= Sürekli Rastgele Değişken

- $f(x) = P(X = x)$: olasılık fonksiyonu (o.f.) // ? T50-02
- $F(x) = P(X <= x)$: dağılım fonksiyonu (birikimli olasılık fonksiyonu)

#tanim("Sürekli rastgele değişken")[$X$'in alabileceği değerler kümesi bir aralık ya da aralıkların birleşimi şeklinde ifade ediliyorsa $X$ rastgele değişkenine sürekli değişken denir.]

Örnekler:

- Bir ürünün ömrü
- Bir dersin yapılma süresi
- Öğrencilerin boyu / kilosu
- Bir mağazaya gelen iki müşteri arasındaki süre
- Bir ailenin doğal gaz tüketimi

== Sürekli Rastgele Değişkenin Olasılık Yoğunluk Fonksiyonu

#tanim("Olasılık yoğunluk fonksiyonu")[$X$ rastgele değişkeni $(-infinity, infinity)$ aralığında değer alsın. Aşağıdaki koşulları sağlayan $f(x)$ fonksiyonuna sürekli rastgele değişkenin olasılık yoğunluk fonksiyonu (o.y.f.) denir.] // ? T50-08

#sekil(id: "S1", baslik: [Olasılık yoğunluk fonksiyonu ve $[a, b]$ aralığındaki alan], genislik: 60%)[
  #tuval({
    import cetz.draw: *
    line((-0.6, 0), (4.4, 0))
    line((0, -1.2), (0, 2.6))
    let f(x) = 1.9 - 0.18 * calc.pow(x - 2.6, 2)
    catmull(..range(-6, 41).map(k => (k / 10, f(k / 10))))
    content((4.45, f(4.0) + 0.05), $f(x)$, anchor: "west")
    line((2.0, 0), (2.0, f(2.0)), stroke: (dash: "dashed"))
    line((3.1, 0), (3.1, f(3.1)), stroke: (dash: "dashed"))
    for k in range(1, 11) {
      let x0 = 2.0 + (k - 1) * 0.11
      line((x0, 0.05), (x0 + 0.11, f(x0 + 0.11) - 0.05), stroke: 0.5pt)
    }
    content((2.0, -0.3), $a$)
    content((3.1, -0.3), $b$)
  })
]

Sürekli bir $f(x)$ fonksiyonu için koşullar:

+ $f(x) >= 0, quad -infinity <= x <= infinity$
+ $integral_(-infinity)^infinity f(x) dif x = 1$

$X$ sürekli rastgele değişkeninin $[a, b]$ aralığında değer alma olasılığı:

$ P(a <= X <= b) = integral_a^b f(x) dif x $

== Hatırlatma: Kesikli ve Sürekli Rastgele Değişkende Olasılık

#table(
  columns: 2,
  inset: 7pt,
  table.header([*Kesikli rastgele değişken için*], [*Sürekli rastgele değişken için*]),
  [
    $P(3 <= x <= 5) = P(x = 3) + P(x = 4) + P(x = 5)$ \
    $P(3 < x <= 5) = P(x = 4) + P(x = 5)$ \
    $P(3 <= x < 5) = P(x = 3) + P(x = 4)$ \
    $P(3 < x < 5) = P(x = 4)$
  ],
  [
    $P(X = a) = 0$ (aralık vermediği için) \
    $P(a <= x <= b) = P(a < x <= b)$ \
    $= P(a <= x < b) = P(a < x < b)$ \
    $= integral_a^b f(x) dif x$
  ],
)

== Örnekler

#ornek[
  $ f(x) = cases(c x\, & quad 0 <= x <= 1, 0\, & quad "diğer durumlarda") $

  *a)* $f(x)$'in bir olasılık yoğunluk fonksiyonu olabilmesi için $c$ sabiti kaç olmalıdır?

  $ integral_0^1 f(x) dif x = 1 $
  $ integral_0^1 c x dif x = 1 "olmalıdır." $
  $ lr(c x^2/2 |)_0^1 = 1 arrow c/2 = 1 arrow c = 2 $
]

*b)* $P(x >= 0","5) = ?$

#sekil(id: "S2", baslik: [$f(x) = 2x$ altında $0","5$ ile $1$ arasındaki alan (yamuk)], genislik: 70%)[
  #tuval({
    import cetz.draw: *
    line((0, 0), (3.6, 0), mark: (end: ">"))
    line((0, 0), (0, 3.4), mark: (end: ">"))
    content((3.8, 0), $x$)
    content((0, 3.7), $f(x)$)
    line((0, 0), (3.0, 3.0))
    line((1.25, 0), (1.25, 1.25), stroke: (dash: "dashed"))
    line((2.5, 0), (2.5, 2.5), stroke: (dash: "dashed"))
    line((0, 1.25), (1.25, 1.25), stroke: (dash: "dashed"))
    line((0, 2.5), (2.5, 2.5), stroke: (dash: "dashed"))
    for k in range(1, 9) {
      let x0 = 1.25 + k * 0.14
      line((x0, 0.05), (x0, x0 - 0.05), stroke: 0.5pt)
    }
    content((1.25, -0.3), $0","5$)
    content((2.5, -0.3), $1$)
    content((-0.3, 1.25), $1$)
    content((-0.3, 2.5), $2$)
    line((2.6, 1.6), (3.2, 1.9), mark: (end: ">"))
    content((3.3, 1.9), $("alt taban" + "üst taban")/2 dot h$, anchor: "west")
  })
]

*1. yol:*

$ P(x >= 0","5) = P(x > 0","5) = integral_(0","5)^1 f(x) dif x $
$ = integral_(0","5)^1 2x dif x = lr(x^2 |)_(0","5)^1 = 1 - (0","5)^2 = 0","75 $

*c)* $P(x < 0","5) = ?$

*1. yol:*

$ P(x < 0","5) = 1 - P(x >= 0","5) = 1 - 0","75 = 0","25 $

*2. yol (alan hesabı):*

#sekil(id: "S3", baslik: [$f(x) = 2x$ altında $0$ ile $0","5$ arasındaki alan (üçgen)], genislik: 55%)[
  #tuval({
    import cetz.draw: *
    line((0, 0), (3.6, 0), mark: (end: ">"))
    line((0, 0), (0, 3.4), mark: (end: ">"))
    content((3.8, 0), $x$)
    content((0, 3.7), $f(x)$)
    line((0, 0), (3.0, 3.0))
    line((1.25, 0), (1.25, 1.25), stroke: (dash: "dashed"))
    line((2.5, 0), (2.5, 2.5), stroke: (dash: "dashed"))
    line((0, 1.25), (1.25, 1.25), stroke: (dash: "dashed"))
    line((0, 2.5), (2.5, 2.5), stroke: (dash: "dashed"))
    for k in range(1, 8) {
      let x0 = k * 0.16
      line((x0, 0.05), (x0, x0 - 0.05), stroke: 0.5pt)
    }
    content((1.25, -0.3), $0","5$)
    content((2.5, -0.3), $1$)
    content((-0.3, 1.25), $1$)
    content((-0.3, 2.5), $2$)
    line((-0.9, -0.5), (0.45, 0.22), mark: (end: ">"))
    content((-1.0, -0.5), $("taban" dot h)/2$, anchor: "east")
  })
] // ? T52-05

$ (0","5 dot 1)/2 = 0","25 $

*3. yol (o.y.f. ile):*

$ integral_0^(0","5) 2x dif x = lr(x^2 |)_0^(0","5) = 0","25 $

#ornek[
  $ f(x) = cases(1/k (3 + x)\, & quad 1 <= x <= 3, 0\, & quad "diğer durumlarda") $

  *a)* $f(x)$'in olasılık yoğunluk fonksiyonu olabilmesi için $k$ sabiti ne olmalıdır?

  $ integral_1^3 f(x) dif x = 1 $
  $ integral_1^3 1/k (3 + x) dif x $
  $ lr((3x/k + x^2/(2k)) |)_1^3 = (9/k + 9/(2k)) - (3/k + 1/(2k)) = 27/(2k) - 7/(2k) = 10/k = 1 "ise" k = 10 $
]

*b)* $P(x <= 2) = ?$

$ integral_1^2 f(x) dif x = integral_1^2 1/10 (3 + x) dif x $
$ = lr(1/10 (3x + x^2/2) |)_1^2 = 9/20 $

*c)* $P(x > 5/2) = ?$ // ? T52-18

$ integral_(2","5)^3 f(x) dif x = integral_(2","5)^3 1/10 (3 + x) dif x $
$ = lr(1/10 (3x + x^2/2) |)_(2","5)^3 = 23/80 $

*d)* $P(0","5 <= x <= 2) = ?$

$ = integral_1^2 f(x) dif x = integral_1^2 1/10 (3 + x) dif x $
$ = lr(1/10 (3x + x^2/2) |)_1^2 = 9/20 $

#ornek[
  $ f(x) = cases((2x)/3\, & quad 0 <= x < 1, 1/3\, & quad 1 <= x <= 3, 0\, & quad "diğer durumlarda") $

  *a)* $f(x)$'in olasılık yoğunluk fonksiyonu olup olmadığını gösteriniz.

  $ integral f(x) dif x = 1 "olmalı" $
  $ integral_0^1 (2x)/3 dif x + integral_1^3 1/3 dif x = 1 $
  $ lr((x^2/3) |)_0^1 + lr((x/3) |)_1^3 = (1/3 - 0) + (1 - 1/3) = 1 $

  Dolayısıyla $f(x)$ bir olasılık yoğunluk fonksiyonudur.
]

*b)* $P(0","5 < x < 2) = ?$

$ integral_(0","5)^1 f(x) dif x + integral_1^2 f(x) dif x = ? $
$ integral_(0","5)^1 (2x)/3 dif x + integral_1^2 1/3 dif x $
$ lr((x^2/3) |)_(0","5)^1 + lr((x/3) |)_1^2 = 7/12 $

*c)* $P(x <= 1/2 | 1/3 <= x <= 2/3) = ?$

$ P(A | B) = P(A inter B) / P(B) $

$ = P((x <= 1/2) inter (1/3 <= x <= 2/3)) / P(1/3 <= x <= 2/3) $
$ = P(1/3 <= x <= 1/2) / P(1/3 <= x <= 2/3) $
$ arrow (integral_(1/3)^(1/2) (2x)/3 dif x) / (integral_(1/3)^(2/3) (2x)/3 dif x) = lr((x^2/3) |)_(1/3)^(1/2) / lr((x^2/3) |)_(1/3)^(2/3) = 0","417 $

#ornek[
  $ f(x) = cases(1/40 (x + 3)\, & quad -2 <= x <= 6, 0\, & quad "diğer durumlarda") $

  *a)* $P(x <= 1 | -1 <= x <= 4) = ?$

  $ = P((x <= 1) inter (-1 <= x <= 4)) / P(-1 <= x <= 4) $
  $ = P(-1 <= x <= 1) / P(-1 <= x <= 4) $
  $ arrow (integral_(-1)^1 1/40 (x + 3) dif x) / (integral_(-1)^4 1/40 (x + 3) dif x) = lr(1/40 (x^2/2 + 3x) |)_(-1)^1 / lr(1/40 (x^2/2 + 3x) |)_(-1)^4 = 4/15 $
]

*b)* $P(|x - 1| <= 2) = ?$

$ = P(-2 <= x - 1 <= 2) $
$ = P(-1 <= x <= 3) $
$ integral_(-1)^3 1/40 (x + 3) dif x = lr(1/40 (x^2/2 + 3x) |)_(-1)^3 = 2/5 $ // ? T54-16

#ornek[
  Bir radyo tüpünün dayanma süresini gösteren $x$ rastgele değişkeninin olasılık yoğunluk fonksiyonu aşağıda tanımlanmıştır (ölçme değeri saat olsun):

  $ f(x) = cases(100/x^2\, & quad x > 100, 0\, & quad "diğer durumlarda") $

  *a)* Seçilen bir radyo tüpünün 150 saatten fazla dayanma olasılığı nedir?

  $X$: radyo tüpünün dayanma süresi.

  $ P(X > 150) = ? $
  $ = integral_150^infinity f(x) dif x = integral_150^infinity 100/x^2 dif x = lr((-100/x) |)_150^infinity = underbrace(-100/infinity, 0) + 100/150 = 2/3 $
]

*b)* Seçilen 3 radyo tüpünden sadece birinin 150 saatten fazla dayanma olasılığı nedir?

$Y$: 150 saatten fazla çalışan radyo tüpü sayısı.

$ P(Y = 1) = ? $

#table(
  columns: 5,
  align: center,
  inset: 6pt,
  table.header([], [*1. tüp*], [*2. tüp*], [*3. tüp*], [*Olasılık*]),
  [$y = 1$], [$+$], [$-$], [$-$], [$2/3 dot 1/3 dot 1/3 = 2/27$],
  [$y = 1$], [$-$], [$+$], [$-$], [$1/3 dot 2/3 dot 1/3 = 2/27$],
  [$y = 1$], [$-$], [$-$], [$+$], [$1/3 dot 1/3 dot 2/3 = 2/27$],
)

Toplarsak:

$ P(Y = 1) = 2/27 + 2/27 + 2/27 = 2/9 $

= Sürekli Rastgele Değişkenin Dağılım Fonksiyonu

Sürekli rastgele değişkenin dağılım fonksiyonu

$ F_X (x) = P(X <= x) = integral_(-infinity)^x f(x) dif x, quad x in (-infinity, infinity) $

olarak ifade edilir. $F_X (x)$ fonksiyonu için:

+ $display(lim_(x -> -infinity)) F_X (x) -> 0, quad display(lim_(x -> infinity)) F_X (x) -> 1$
+ $x_1 < x_2 arrow F_X (x_1) <= F_X (x_2)$; yani $F_X$ azalmayan bir fonksiyondur.

#bilgi[
  Sürekli rastgele değişken için:

  $ P(x_1 <= x <= x_2) = P(x_1 < x <= x_2) = P(x_1 <= x < x_2) = P(x_1 < x < x_2) = F(x_2) - F(x_1) = integral_(x_1)^(x_2) f(x) dif x $
]

#bilgi[
  $ F_X (x) = integral_(-infinity)^x f(x) dif x $
  $ f(x) = (partial F_X (x)) / (partial x) $
]

== Örnekler

#ornek[
  $ f(x) = cases(1/10 (x + 3)\, & quad 1 <= x <= 3, 0\, & quad "diğer durumlarda") $

  *a)* $X$ rastgele değişkeninin dağılım fonksiyonunu bulunuz.

  $ F_X (x) = P(X <= x) = cases(0\, & quad x < 1, (x^2 + 6x - 7)/20\, & quad 1 <= x <= 3, 1\, & quad x > 3) $

  $ F_X (x) = P(X <= x) = integral_1^x f(x) dif x = integral_1^x 1/10 (x + 3) dif x = lr(1/10 (x^2/2 + 3x) |)_1^x = (x^2 + 6x - 7)/20 $
]

$F(2)$ iki yoldan bulunabilir; ikisi de aynı değerdir:

*1. yol:* $F(2) = P(x <= 2) = (2^2 + 6(2) - 7)/20$

*2. yol:* $P(x < 2) = integral_1^2 f(x) dif x$

$ F(5) = P(x <= 5) = P(1 <= x <= 3) $
$ = integral_1^3 f(x) dif x = 1 $

*b)* $P(x > 2","5) = ?$

*1. yol (dağılım fonksiyonu ile):*

$ P(x > 2","5) = 1 - P(x <= 2","5) $
$ = 1 - F(2","5) $
$ = 1 - ((2","5)^2 + 6(2","5) - 7)/20 $
$ = 0","2875 $

*2. yol (o.y.f. ile):*

$ P(x > 2","5) = integral_(2","5)^3 1/10 (x + 3) dif x = 0","2875 $

*c)* $P(1","3 < x < 2) = ?$

*1. yol (dağılım fonksiyonu ile):*

$ P(x <= 2) - P(x <= 1","3) $
$ = F(2) - F(1","3) $
$ = (2^2 + 6 dot 2 - 7)/20 - ((1","3)^2 + 6 dot (1","3) - 7)/20 $

*2. yol (o.y.f. ile):*

$ P(1","3 < x < 2) = integral_(1","3)^2 f(x) dif x = integral_(1","3)^2 1/10 (x + 3) dif x $
$ = lr(1/10 (x^2/2 + 3x) |)_(1","3)^2 $

== Hatırlatma: Kesikli ve Sürekli Rastgele Değişken

#table(
  columns: 3,
  inset: 7pt,
  table.header([], [*Kesikli*], [*Sürekli*]),
  [], [$f(a) = P(x = a)$ vardır.], [$P(x = a)$ yoktur.],
  [*Dağılım*], [$F(a) = P(x <= a)$], [$F(a) = P(x <= a) = integral_(-infinity)^a f(x) dif x$ (o.y.f.)],
  [], [$P(a <= x <= b) = P(x = a) + dots + P(x = b)$ (o.f.)], [],
) // ? T57-08

== Dağılım Fonksiyonu Örneği

#ornek[
  $ f(x) = cases(x\, & quad 0 <= x <= 1, 2 - x\, & quad 1 <= x <= 2, 0\, & quad "diğer durumlarda") $ // ? T58-02

  $x$ rastgele değişkeninin dağılım fonksiyonunu bulunuz.

  $ F_X (x) = P(X <= x) = cases(0\, & quad x < 0, x^2/2\, & quad 0 <= x <= 1, 2x - x^2/2 - 1\, & quad 1 <= x <= 2, 1\, & quad x >= 2) $

  *$0 <= x <= 1$ aralığı için:*

  $ F(x) = P(X <= x) = integral_0^x x dif x = lr(x^2/2 |)_0^x = x^2/2 $
  $ F(1) = P(x <= 1) = 1/2 $
  $ F(0","5) = P(x <= 0","5) = (0","5)^2/2 $

  *$1 <= x <= 2$ aralığı için:*

  $ F_X (x) = P(X <= x) = underbrace(F(1), "birikimli fonksiyon") + integral_1^x f(x) dif x $ // ? T58-08

  $x = 1","5$ olsun:

  $ P(x < 1","5) = underbrace(integral_0^1 f(x) dif x, 1/2) + integral_1^(1","5) f(x) dif x $
  $ = 1/2 + integral_1^(1","5) (2 - x) dif x arrow F_X (x) = 2x - x^2/2 - 1 $

  $ F(1","75) = P(x <= 1","75) = integral_0^1 x dif x + integral_1^(1","75) (2 - x) dif x $
]
]

#show: ders.with(hafta: 5)
#icerik
