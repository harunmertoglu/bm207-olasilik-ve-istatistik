// Kaynak: Olasılık ve İstatistik.pdf, s. 60 ("HAFTA6" başlığından itibaren)–68
#import "/_sablon/sablon.typ": *

#let icerik = [
= Bir Rastgele Değişkenin Beklenen Değeri

Beklenen değer; matematiksel umut, 1. moment ya da ortalama olarak da adlandırılır. Beklenen değer kavramı şans oyunlarından doğmuştur.

Örneğin 50 bin TL'lik ödülün olduğu bir çekilişte 10 bin bilet satılmışsa biletlerden birinin ödül alan bilet olma olasılığı kaçtır? Bu olasılık $1 slash 10"."000$'dir. Bu durumda bilet alan birinin beklenen kazancı $50"."000 dot 1/(10"."000)$'den $5 " TL"$'dir. Yani herhangi bir bilet başına ortalama kazanç $5 " TL"$'dir.

#tanim("Beklenen değer")[Herhangi bir $X$ rastgele değişkeninin beklenen değeri, o rastgele değişkenin aldığı değerler ile bu değerleri alma olasılıklarının çarpımlarının toplamıdır. Yani beklenen değer ağırlıklı bir ortalamadır.]

$X$ kesikli bir rassal değişken ise beklenen değer, $P(X = x)$ olasılık fonksiyonu olmak üzere
$ E(X) = sum_(x in S) x dot P(X = x) $
ile gösterilir.

$X$ sürekli bir rassal değişken ise beklenen değer, $f(x)$ olasılık yoğunluk fonksiyonu olmak üzere
$ E(X) = integral x f(x) dif x $ // ? T60-06
ile gösterilir.

#ornek[
  Bir paranın 3 kez atılması deneyinde $X$ rastgele değişkeni tura gelme sayısı olarak tanımlansın. Bu durumda paranın 3 kez atılması deneyinde ortalama kaç turayla karşılaşmayı bekleriz?

  $X$: tura gelme sayısı $= 0, 1, 2, 3$ (kesikli bir rd).
  $ S = {underbrace(Y Y Y, 0), underbrace(Y Y T\, Y T Y\, T Y Y, 1), underbrace(Y T T\, T Y T\, T T Y, 2), underbrace(T T T, 3)} $

  #align(center, table(
    columns: 5,
    align: center,
    [$X = x$], [$0$], [$1$], [$2$], [$3$],
    [$P(X = x)$], [$1/8$], [$3/8$], [$3/8$], [$1/8$],
  ))

  Olasılıkların toplamı 1'dir; örneğin $P(X = 0) = 1/2 dot 1/2 dot 1/2 = 1/8$.
  $ E(x) = 0 dot 1/8 + 1 dot 3/8 + 2 dot 3/8 + 3 dot 1/8 = 1","5 $
]

#ornek[
  Bir makinede üretilen 20 üründen 4 tanesinin bozuk olduğu bilinmektedir. Rastgele seçilen 5 üründen ortalama kaçının bozuk olması beklenir? (Seçimler yerine koymadan yapılır.)

  Toplam 20 ürünün 4'ü bozuk (B), 16'sı sağlamdır (S). $X$: bozuk ürün sayısı $= 0, 1, 2, 3, 4$.

  #align(center, table(
    columns: 6,
    align: center + horizon,
    inset: 6pt,
    [$X = x$], [$0$], [$1$], [$2$], [$3$], [$4$],
    [$P(X = x)$],
    [$(binom(4, 0) binom(16, 5))/binom(20, 5)$], // ? T60-15
    [$(binom(4, 1) binom(16, 4))/binom(20, 5)$],
    [$(binom(4, 2) binom(16, 3))/binom(20, 5)$],
    [$(binom(4, 3) binom(16, 2))/binom(20, 5)$],
    [$(binom(4, 4) binom(16, 1))/binom(20, 5)$],
    [], [$0","28$], [$0","47$], [$0","22$], [$0","03$], [$0","001$],
  ))

  $ E(x) = 0 dot (0","28) + 1 dot (0","47) + 2 dot (0","22) + 3 dot (0","03) + 4 dot (0","001) = 1 $
]

#ornek[
  Bir oyunda 3 para atılsın; paraların tümü yazı ya da tümü tura gelirse $5 " TL"$ kazanılsın, aksi durumda $3 " TL"$ kaybedilsin. Oyuncunun her oyunda ortalama ne kadar kazanması beklenir?

  $s(S) = 8$ olduğundan:
  - $T T T$ veya $Y Y Y$ gelirse $arrow.r.double +5 " TL"$ (olasılık $2/8$),
  - aksi halde $arrow.r.double -3 " TL"$ (olasılık $6/8$).

  $ 5 dot 2/8 - 3 dot 6/8 = -1 " TL" $

  Bu oyunun adil bir oyun olması için $T T T$ ya da $Y Y Y$ geldiğinde kaç TL kazanılmalıdır?
  $ a dot 2/8 - 3 dot 6/8 = 0 $
  olmalıdır. $a = 9$ olursa adil oyun olur.
]

#bilgi[Ortalama kazanç 0 çıksaydı oyuna adil oyun denilirdi.]

#ornek[
  Bir müzik çaların ilk kez bozuluncaya kadar geçen süresinin dağılımı aşağıdaki fonksiyonla tanımlanmıştır. Bu müzik çaların ortalama dayanma süresini bulunuz.
  $ f(x) = cases(e^(-x)"," & x > 0, 0"," & "dh") $

  $X$: müzik çaların dayanma süresi (sürekli bir rd).
  $ E(x) = integral x f(x) dif x = integral_0^oo x e^(-x) dif x $

  Kısmi integrasyon için $u = x$, $dif u = dif x$; $dif v = e^(-x) dif x$, $v = -e^(-x)$ alınırsa $u v - integral v dif u$ formülünden:
  $ E(x) = lr(-x e^(-x) |)_0^oo - integral_0^oo (-e^(-x)) dif x $ // ? T61-14
  $ = lr(-x e^(-x) |)_0^oo - lr(e^(-x) |)_0^oo = 1 $ // ? T61-14
]

#ornek[
  Bir üretim hattındaki vidaların çapına ilişkin olasılık yoğunluk fonksiyonu aşağıdaki gibidir. Üretilen vidaların ortalama çapını bulunuz.
  $ f(x) = cases(2/3 x"," & 0 < x < 1, 2/3"," & 1 <= x <= 2, 0"," & "dh") $

  $ E(x) = integral_0^1 underbrace(x dot 2/3 x, 2/3 x^2) dif x + integral_1^2 x dot 2/3 dif x $
  $ = 2/3 lr(x^3/3 |)_0^1 + 2/3 lr(x^2/2 |)_1^2 = 11/9 $
]

== Beklenen Değerin Özellikleri

+ $a$ ve $b$ birer sabit olmak üzere $(a x + b)$ rd'nin beklenen değeri:

  $X$ kesikli bir rd ise
  $ E(a x + b) = sum (a x + b) dot P(X = x) = sum a x P(X = x) + sum b P(X = x) $
  $ = a underbrace(sum x P(X = x), E(x)) + b underbrace(sum P(X = x), 1) = a E(x) + b $

  $X$ sürekli bir rd ise
  $ E(a x + b) = integral (a x + b) f(x) dif x = integral a x f(x) dif x + integral b f(x) dif x $
  $ = a underbrace(integral x f(x) dif x, E(x)) + b underbrace(integral f(x) dif x, 1) = a E(x) + b $

+ $E(x + y) = E(x) + E(y)$.

+ $g(x)$, $x$'in bir fonksiyonu olmak üzere:
  $ E(g(x)) = sum g(x) dot P(X = x) quad (X "kesikli") $
  $ E(g(x)) = integral g(x) dot f(x) dif x quad (X "sürekli") $

+ Ortalama $E(x) = mu$ ile gösterilir.

#bilgi[
  $ E(x^r) = sum x^r P(X = x) arrow.r r". moment (kesikli)" $
  $ E(x^r) = integral x^r f(x) dif x arrow.r r". moment (sürekli)" $
]

#ornek[
  $X$ rastgele değişkeni bir zar atıldığında gelen sayı olsun. $Y = g(x) = 2x^2 + 1$ olarak ifade edilsin. $Y$ rastgele değişkeninin beklenen değerini bulunuz.

  $X$: zar atıldığında gelen sayı.
  #align(center, table(
    columns: 7,
    align: center,
    [$X = x$], [$1$], [$2$], [$3$], [$4$], [$5$], [$6$],
    [$P(X = x)$], [$1/6$], [$1/6$], [$1/6$], [$1/6$], [$1/6$], [$1/6$],
  ))

  *1. yol:* $Y = 2x^2 + 1$ dönüşümüyle $Y$'nin değerleri ve olasılıkları bulunur; örneğin $P(X = 1) = P(Y = 3) = 1/6$.
  #align(center, table(
    columns: 7,
    align: center,
    [$Y = y$], [$3$], [$9$], [$19$], [$33$], [$51$], [$73$], // ? T63-07
    [$P(Y = y)$], [$1/6$], [$1/6$], [$1/6$], [$1/6$], [$1/6$], [$1/6$], // ? T63-07
  ))
  $ E(y) = 3 dot 1/6 + 9 dot 1/6 + dots + 73 dot 1/6 = 31","34 $

  *2. yol:*
  $ E(y) = E(2x^2 + 1) = 2 E(x^2) + 1 $
  $ E(x^2) = sum x^2 P(X = x) = 1^2 dot 1/6 + 2^2 dot 1/6 + dots + 6^2 dot 1/6 = 91/6 $
  $ E(y) = 2 dot 91/6 + 1 = 31","34 $
]

#ornek[
  Bir bilgisayarın tamiri için geçen süre aşağıdaki o.y.f. ile tanımlanmıştır. Tamir ücretinin zamana bağlı ifadesi $T(x)$ fonksiyonu olarak tanımlanmıştır. Buna göre tamir için ödenecek ortalama ücreti bulunuz.
  $ f(x) = cases(1/2"," & 0 < x < 2, 0"," & "dh") quad quad T(x) = 40 + 30 sqrt(x) $

  $ E(T(x)) = integral T(x) f(x) dif x = integral_0^2 1/2 dot (40 + 30 sqrt(x)) dif x $
  $ = integral_0^2 40/2 dif x + 30/2 integral_0^2 sqrt(x) dif x = 40 + 15 lr((2/3 x^(3 slash 2)) |)_0^2 = 68","28 " TL" $ // ? T63-17
]

= Bir Rastgele Değişkenin Varyansı ve Standart Sapması

Rastgele değişkenin beklenen değeri, olasılık dağılımının nerede yoğunlaştığı hakkında bilgi verir. Ancak rastgele değişkenin belirlenen değer aralığında nasıl yayıldığı, dağıldığı ya da saçıldığı hakkında bilgi vermez. Bu durumda beklenen değer kavramı yardımıyla hesaplanan varyans ya da standart sapma kullanılır.

Dağılım ölçüsünün değeri küçükse verideki birimler birbirine yakın, yani homojen yapıdadır. Yığın homojen yapıdayken dağılım sivrileşir; aksi durumda, yani yığın heterojen yapıdayken dağılım basıklaşır.

#sekil(id: "S1", baslik: [Aynı ortalamaya sahip sivri ve basık iki dağılım], genislik: 60%)[
  #tuval({
    import cetz.draw: *
    let kesikli = (paint: cizgi.paint, thickness: 0.9pt, dash: "dashed")
    let noktali = (paint: cizgi.paint, thickness: 0.6pt, dash: "dotted")
    line((0, 0), (6, 0))
    catmull(..range(0, 61).map(k => (k / 10, 2.2 * calc.exp(-calc.pow(k / 10 - 3, 2) / (2 * 0.42)))))
    catmull(..range(0, 61).map(k => (k / 10, 0.15 + 1.4 * calc.exp(-calc.pow(k / 10 - 3, 2) / (2 * 1.1)))), stroke: kesikli)
    line((3, 0), (3, 2.2), stroke: noktali)
    content((3, -0.45), $E(x) = mu$)
  })
]

#tanim("Varyans")[Birimlerin kendi ortalamalarından farklarının karesi olarak ifade edilir.]

#tanim("Standart sapma")[Varyansın pozitif kareköküne standart sapma denir.]

Kesikli rd için:
$ V(x) = sigma^2 = E(x - E(x))^2 = E(x^2) - [E(x)]^2 $ // ? T64-07

Sürekli rd için:
$ V_x = sigma^2 = E(x - E(x))^2 = E(x^2) - [E(x)]^2 = integral (x - E(x))^2 dot f(x) dif x $ // ? T64-08

#ornek[
  $A$ ve $B$ gibi iki atıcının yaptıkları atışlar sonucunda 0, 1, 2, 3 puan alma olasılıkları veriliyor. Buna göre hangi atıcı daha istikrarlı, birbirine daha benzer atışlar yapmıştır?

  $X$: puan.
  #align(center, table(
    columns: 5,
    align: center,
    [$X = x$], [$0$], [$1$], [$2$], [$3$],
    [$A$ için $P(X = x_A)$], [$0","1$], [$0","3$], [$0","1$], [$0","5$],
    [$B$ için $P(X = x_B)$], [$0$], [$0","1$], [$0","8$], [$0","1$],
  ))

  $ E(x_A) = 0 dot (0","1) + 1 dot (0","3) + 2 dot (0","1) + 3 dot (0","5) = 2 $
  $ E(x_B) = 0 dot 0 + 1 dot (0","1) + 2 dot (0","8) + 3 dot (0","1) = 2 $

  $ sigma_A^2 = E(x_A^2) - [E(x_A)]^2 arrow.r.double E(x_A^2) = 0^2 (0","1) + 1^2 (0","3) + 2^2 (0","1) + 3^2 (0","5) = A $
  $ sigma_B^2 = E(x_B^2) - [E(x_B)]^2 arrow.r.double E(x_B^2) = 0^2 dot 0 + 1^2 (0","1) + 2^2 (0","8) + 3^2 (0","1) = B $
  $ sigma_A^2 = A - 2^2 = 1","2 " puan" quad quad sigma_B^2 = B - 2^2 = 0","2 " puan" $

  $sigma_B^2 < sigma_A^2$ olduğundan $B$ daha istikrarlı atışlar yapmıştır.
]

#bilgi[
  İki ya da daha fazla yığından hangisinin daha homojen olduğunu bulmak için varyans karşılaştırması yapılabilmesi için ortalamaların mutlaka eşit olması gerekir. Eşit değilse bu karşılaştırma için değişim katsayısı ($c$) kullanılır:
  $ c = sigma / mu, quad mu = E(x) $
]

#bilgi[
  $mu_A = 2 " puan"$, $sigma_A^2 = 4$ ve $mu_B = 1 " puan"$, $sigma_B^2 = 9$ olsaydı $mu_A != mu_B$ olduğundan: // ? T65-09
  $ C_A = sigma_A / mu_A = 1, quad C_B = sigma_B / mu_B = 3 $
  $C_A < C_B$ olduğundan $A$ daha homojendir.
]

== Varyansın Özellikleri

+ $a$ ve $b$ birer sabit olmak üzere:
  $ V(a x) = E((a x)^2) - [E(a x)]^2 = E(a^2 x^2) - [a E(x)]^2 = E(a^2 x^2) - [a^2 (E(x))^2] $
  $ = a^2 [E(x^2) - (E(x))^2] = a^2 dot V(x) $

+ $V(x + a) = E(x + a - E(x + a))^2 = E(x + cancel(a) - E(x) - cancel(a))^2 = E(x - E(x))^2 = V(x)$ // ? T65-13

$a$ ve $b$ sabit, $X$ bir rd olmak üzere:

#align(center, table(
  columns: 2,
  stroke: none,
  column-gutter: 2em,
  align: left,
  [$E(a) = a$], [$V(a) = 0$],
  [$E(x + a) = E(x) + a$], [$V(x + b) = V(x)$],
  [$E(a x + b) = a E(x) + b$], [$V(a x + b) = a^2 dot V(x)$],
  [$E(a x - b) = a E(x) - b$], [$V(a x - b) = a^2 dot V(x)$],
))

#ornek[
  $X$ sürekli rassal değişkeninin dağılım fonksiyonu aşağıda verildiği gibidir.
  $ F(x) = P(X <= x) = cases(0"," & x < -1, 1/8 (x^3 + 3x + 4)"," & -1 <= x <= 1, 1"," & x > 1) $ // ? T66-02

  a) $X$ rd'nin ortalamasını, varyansını ve standart sapmasını bulunuz.

  b) $Y = 2x + 5$ olmak üzere $Y$'nin ortalamasını ve varyansını bulunuz.

  *a)* $E(x) = mu = integral x f(x) dif x$ olduğundan önce yoğunluk fonksiyonu bulunur:
  $ f(x) = (partial F(x))/(partial x) = cases(1/8 (3x^2 + 3)"," & -1 <= x <= 1, 0"," & "dh") $
  $ E(x) = mu = integral_(-1)^1 x dot 1/8 (3x^2 + 3) dif x = integral_(-1)^1 3/8 (x^3 + x) dif x = 3/8 lr((x^4/4 + x^2/2) |)_(-1)^1 = 0 $
  $ V(x) = sigma^2 = E(x^2) - [E(x)]^2 $
  $ E(x^2) = integral_(-1)^1 x^2 dot f(x) dif x = integral_(-1)^1 x^2 dot 3/8 (x^2 + 1) dif x = 3/8 lr((x^5/5 + x^3/3) |)_(-1)^1 = 2/5 $ // ? T66-09
  $ sigma^2 = V(x) = 2/5 - (0)^2 = 2/5 arrow.r.double sigma = sqrt(V(x)) = sqrt(2/5) $

  *b)*
  $ E(y) = mu_y = E(2x + 5) = 2 underbrace(E(x), 0) + 5 = 5 $
  $ sigma_y^2 = V(y) = V(2x + 5) = 4 dot V(x) + 0 = 4 dot 2/5 + 0 arrow.r.double sigma_y = sqrt(8/5) $
]

== Sınav Sorusu

#soru[
  3 beyaz 2 siyah top olan kavanozdan rastgele 2 top seçiliyor. Seçilen her beyaz top için $100 " TL"$ kazanılacak, her siyah top için $50 " TL"$ kaybedilecektir. Seçimler yerine koyarak yapıldığına göre bu oyunun beklenen kazancı nedir?

  b) Oyuncunun kazandığı para miktarının varyansını bulunuz.

  c) 2. momentini bulunuz.
]

#cozum[
  $ S = {B B, B S, S B, S S} $
  Bu sonuçların olasılıkları sırasıyla $3/5 dot 3/5$, $3/5 dot 2/5$, $2/5 dot 3/5$, $2/5 dot 2/5$; kazançları ise $200$, $50$, $50$, $-100$ TL'dir.

  $X$: kazanılan para miktarı $= {200, 50, -100}$.
  #align(center, table(
    columns: 4,
    align: center,
    [$X = x$], [$200$], [$50$], [$-100$],
    [$P(X = x)$], [$9/25$], [$12/25$], [$4/25$],
  ))
  $ E(x) = 200 dot 9/25 + 50 dot 12/25 - 100 dot 4/25 = 80 $
]
]

#show: ders.with(hafta: 6)
#icerik
