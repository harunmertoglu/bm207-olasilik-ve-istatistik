#set page(paper: "a4", margin: (x: 2.15cm, y: 1.7cm), numbering: "1")
#set text(font: "Libertinus Serif", size: 10.5pt, lang: "tr")
#set par(justify: true, leading: 0.55em)
#set heading(numbering: "1.")
#show heading.where(level: 1): set text(size: 16pt, weight: "bold")
#show heading.where(level: 2): set text(size: 12.5pt, weight: "bold")
#show heading.where(level: 3): set text(size: 11pt, weight: "bold")

= Olasılık ve İstatistik — 2. Hafta

== Olasılığın Klasik Tanımı

Olasılık bir fonksiyondur ve örnek uzaydaki her bir olaya $[0,1]$ aralığında bir reel sayı eşitler. $S$ örnek uzayını temsil etmek üzere, $S$'nin alt kümesi olan bir $A$ olayının ortaya çıkma olasılığı

$ P(A) = ("A olayının ortaya çıkma sayısı") / ("Tüm mümkün durumlar sayısı") = s(A) / s(S) $

olarak hesaplanır. Olasılık bir bütün içinde bir oran aramaktır.

Klasik tanımda örnek uzay sonlu ve sonuçlar eş olasılıklıdır.

$A$ olayının gerçekleşmeme olasılığı ise

$ P(overline(A)) = ("A olayının ortaya çıkmama sayısı") / ("Tüm mümkün durumlar sayısı") = s(overline(A)) / s(S) $

- $0 <= P(A) <= 1$
- $0 <= P(overline(A)) <= 1$
- $P(A) + P(overline(A)) = 1 = P(S)$

$A_1, A_2, dots$ olayları ikişerli ayrık olaylar olmak üzere,

$ A_i inter A_j = emptyset quad i != j $

$ P(A_1 union A_2 union dots) = P(⋃_(i=1)^infinity A_i) = P(A_1) + P(A_2) + dots $

#underline[*Örnek:*] Bir zarın atılması deneyinde $E$ olayı, zarın 3 veya 4 gelmesi ise $E$ olasılığı nedir?

$ S = {1, 2, 3, 4, 5, 6} $
$ A_1: "3 gelmesi", quad A_2: "4 gelmesi", quad E = A_1 union A_2 $

$A_1$ ve $A_2$ ayrık olduğundan:

$ P(E) = P(A_1) + P(A_2) = 1/6 + 1/6 = 1/3 $

#underline[*Örnek:*] Elimizde 52'lik deste var.

$ S = {"kupa 1", dots, "kupa papaz", "sinek 1", dots, "sinek papaz", "karo 1", dots, "karo papaz", "maça 1", dots, "maça papaz"} $

a) Seçilen kartın kupa olma olasılığı nedir?

$ P(A) = 13/52 = 1/4 $

b) Seçilen kartın ikili olma olasılığı nedir?

$ B = "2'li olma" = {"kupa 2", "karo 2", "sinek 2", "maça 2"} $
$ P(B) = 4/52 = 1/13 $

c) Seçilen kartın kupa ve 2'li olma olasılığı? ($A inter B$ üzerinden tanımla.)

$ A inter B = {"kupa 2"} $
$ P(A inter B) = 1/52 = 1/4 dot 1/13 $

d) Kupa veya 2'li olma olasılığı? ($A union B$ üzerinden tanımla.)

$ P(A union B) = P(A) + P(B) - P(A inter B) $
$ = 1/13 + 1/4 - 1/52 = 16/52 = 4/13 $

#underline[*Örnek:*] Bir torbada 5 beyaz, 6 kırmızı ve 3 sarı top var. Bir top seçildiğinde kırmızı olasılığı?

$ P(K) = 6/14 = 3/7 $

#underline[*Örnek:*] 1, 2, 3, 4 ve 5 rakamlarından üçü rastgele seçilerek 3 basamaklı bir sayı yazılıyor.

a) Kullanılan sayının tekrar kullanılması izin verilirse yazılan sayının çift olma olasılığı?

$ s(S) = 5 dot 5 dot 5, quad s(A) = 5 dot 5 dot 2 $
$ P(A) = (5 dot 5 dot 2) / (5 dot 5 dot 5) = 2/5 $

b) Kullanılan sayının tekrar kullanılması izin verilmezse yazılan sayının çift olma olasılığı?

$ s(S) = 5 dot 4 dot 3, quad s(A) = 4 dot 3 dot 2 $
$ P(A) = (4 dot 3 dot 2) / (5 dot 4 dot 3) = 2/5 $

c) İki durum için de yazılan 3 basamaklı sayının 5'in katı olma olasılığı nedir?

Tekrarlı:

$ s(S) = 5 dot 5 dot 5 = 125 $
$ B: "5'in katı" = 5 dot 5 dot 1 = 25 $
$ P(B) = 25/125 = 1/5 $

Tekrarsız:

$ s(S) = 5 dot 4 dot 3 = 60 $
$ B: 4 dot 3 dot 1 = 12 $
$ P(B) = 12/60 = 1/5 $

(Hep aynı çıktı, bir bak buraya.)

#underline[*Örnek:*] 1'den 10'a kadar numaralandırılmış 10 top torbanın içinde var. 2 top seçiliyor.

a) Tekrarlı yerine koyma yöntemiyle 3 ve 7 seçilme olasılığı nedir?

$ (3,7): 1/10 dot 1/10 = 1/100 $
$ (7,3): 1/10 dot 1/10 = 1/100 $
$ 1/100 + 1/100 = 2/100 $

b) Tekrarsız:

$ 1/10 dot 1/9 = 1/90 $
$ 1/10 dot 1/9 = 1/90 $
$ 1/90 + 1/90 = 2/90 $

#underline[*Örnek:*] İki para atılıyor.

a) Her iki paranın aynı gelme olasılığı?

$ (T,T): 1/2 dot 1/2 = 1/4 $
$ (Y,Y): 1/2 dot 1/2 = 1/4 $
$ 1/4 + 1/4 = 2/4 $

b) Birinci paranın $T$ gelme olasılığı:

$ (T,T): 1/2 dot 1/2 = 1/4 $
$ (T,Y): 1/2 dot 1/2 = 1/4 $
$ 1/4 + 1/4 = 2/4 $

c) En az bir $T$ gelme olasılığı:

$ (T,T): 1/4, quad (T,Y): 1/4, quad (Y,T): 1/4 $
$ P = 3/4 $

#underline[*Örnek:*] İki zar atılıyor. $s(S) = 6^2 = 36$.

a) İki zarın da aynı gelme olasılığı:

$ (1,1), (2,2), (3,3), (4,4), (5,5), (6,6) $
$ P = 6/36 = 1/6 $

b) Toplamlarının 10 gelme olasılığı:

$ (4,6), (5,5), (6,4) $
$ P = 3/36 $

c) İkisinin de çift gelme olasılığı:

$ (2,2), (2,4), (2,6), (4,2), (4,4), (4,6), (6,2), (6,4), (6,6) $
$ P = 9/36 $

#underline[*Örnek:*] $m$ iş başvurusu için $n$ tane aday başvurmuştur ($n >= m$).

a) $n$ tane adayın içerisinden $m$ tanesi kaç farklı şekilde seçilebilir?

$ C_m^n = binom(n,m) $

b) Yapılan seçimler içerisinde $a$ adayı kaç kez bulunur?

$ binom(n-1,m-1) quad -> quad "a adayının seçimde bulunma sayısı" $

c) $a$ adayının işe seçilme olasılığı nedir?

$ P(A) = binom(n-1,m-1) / binom(n,m) = m/n $

#underline[*Örnek:*] Bir zar, her tek sayının gelme şansı her çift sayının gelme şansının iki katı olacak biçimde hileli duruma getirilmiştir. Zarın herhangi bir atışta 3'ten büyük gelmesi olasılığı nedir?

$ S = {1,2,3,4,5,6} $
$ P(S) = P(1) + P(2) + P(3) + P(4) + P(5) + P(6) $
$ 2x + x + 2x + x + 2x + x = 9x = 1 $
$ x = 1/9 -> "çift", quad 2x = 2/9 -> "tek" $

$ C: "3'ten büyük" $
$ P(C) = P(4) + P(5) + P(6) = 1/9 + 2/9 + 1/9 = 4/9 $

#underline[*Örnek:*] Bir para tura gelinceye kadar atılıyor. Örnek uzayın bir olasılık fonksiyonu olduğunu gösteriniz.

$ S = {T, "YT", "YYT", "YYYT", dots} $
$ P(S) = 1 $
$ P(T) = 1/2, quad P("YT") = 1/4, quad P("YYT") = 1/8, quad dots $
$ P(S) = 1/2 + 1/4 + 1/8 + dots = 1/2 (1 + 1/2 + 1/4 + dots) = 1/2 (1/(1-1/2)) = 1 $

(Sınavda açılımlar verilecek.)

#underline[*Örnek:*] 4'ü bozuk 12 üründen 2'si rastgele seçiliyor. Seçilen bir daha seçilmeyecek biçimde:

a) İkisinin de bozuk olması, sadece tekrarsızda:

$ s(A)/s(S) = (4 dot 3)/(12 dot 11) = 1/11 $

2. yol (hipergeometrik dağılım):

$ (binom(4,2) binom(8,0))/binom(12,2) $

b) En az 1 bozuk ürün:

$ (4/12 dot 8/11) + (8/12 dot 4/11) + 1/11 = 32/132 + 32/132 + 1/11 = 19/33 $

2. yol:

$ (binom(4,1) binom(8,1))/binom(12,2) + binom(4,2)/binom(12,2) $

(Bana ne lazım? Onu aldır mantığı.)

#pagebreak()

#underline[*Soru:*] 52 kartlık bir desteden tekrar yerine koymadan 8 kart seçiliyor. 3 as ("1'li") veya 3 papaz gelme olasılığı.

$ P(A) = (binom(4,3) binom(48,5))/binom(52,8) $
$ P(B) = (binom(4,3) binom(48,5))/binom(52,8) $
$ P(A inter B) = (binom(4,3) binom(4,3) binom(44,2))/binom(52,8) $
$ P(A union B) = P(A) + P(B) - P(A inter B) $

== Geometrik Olasılık

Örnek uzay sayılabilir değilse, yani bir süreklilik varsa bu durumda geometrik olasılık denen yeni bir tanım yapacağız. Bu durumlarda sürekli örnek uzay; uzunluk, alan, hacim gibi sonlu bir geometrik ölçüye sahiptir. Bu ölçü $m(S)$ ile gösterilir. Bu süreklilik içerisinde meydana gelen bir $A$ olayının olasılığı $P(A) = m(A)/m(S)$ ile gösterilir.

#underline[*Örnek:*] Karenin alanında seçilen bir noktanın taralı bölgede olma olasılığı nedir?

#align(center)[#image("../assets/kare-cember.svg", width: 34%)]

$ m(A) = 2 dot 2 - pi dot 1^2 = 4 - pi $
$ m(S) = 4 $
$ P(A) = (4-pi)/4 $

#underline[*Örnek:*] $(0,2)$ aralığındaki reel sayılardan iki tanesi seçildiğinde bu sayıların toplamlarının $0.5$'ten küçük olma olasılığı nedir?

$ 0 <= a <= 2, quad 0 <= b <= 2, quad a+b <= 1/2 $

#align(center)[#image("../assets/ucgen-alan.svg", width: 33%)]

$ P = (1/8)/4 = 1/32 $

#pagebreak()

#underline[*Örnek:*] Uzunluğu $d$ olan bir doğru parçası üzerinde rastgele iki nokta işaretleniyor. Elde edilen bu üç parça ile üçgen oluşma olasılığı nedir?

#align(center)[#image("../assets/dogru-ucgen.svg", width: 67%)]

$ x+y > d-x-y quad => quad x+y > d/2 $
$ x < d/2, quad y < d/2, quad x+y <= d $

*Not:* Hoca ilk eşitsizliği ters yazmış. Üçgen oluşması için $x+y > d/2$ olmalı.

#align(center)[#image("../assets/ucgen-olasilik.svg", width: 46%)]

$ (d^2/8)/(d^2/2) = 1/4 $

== Koşullu Olasılık

$A$ ve $B$ olayları $S$ örnek uzayında iki olay olsun. $B$ olayının gerçekleştiği (ortaya çıktığı) biliniyorken $A$ olayının gerçekleşme olasılığına $A$'nın $B$'ye göre koşullu olasılığı denir. $P(A|B)$ de olur.

$ P(A|B) = P(A inter B)/P(B), quad P(B) > 0 $

Koşullu olasılık örnek uzayın koşula indirgenmesidir.

$ P(overline(A)|B) = P(overline(A) inter B)/P(B) $
$ P(A inter B) + P(overline(A) inter B) = 1 $

*Not:* Sonucu hoca böyle yazmış fakat bence $1$ yerine $P(B)$ olmalı.

#underline[*Örnek:*] Öğrencilerin öğretim üyelerinin verdikleri derslerdeki performanslarına göre aşağıdaki gibi değerlendirilmiştir.

#table(
  columns: 4,
  align: center,
  inset: 7pt,
  table.header([], [Yüksek], [Orta], [Düşük]),
  [Kadın], [10], [12], [8],
  [Erkek], [20], [18], [12],
)

Toplam: 80

Seçilen bir öğretim üyesinin:

#block(breakable: false)[
a) Yüksek olma olasılığı:

$ P(Y) = 30/80 -> "marjinal olasılık" $
]

b) Erkek veya düşük performans sergileme olasılığı nedir?

$ P(E union D) = P(E) + P(D) - P(E inter D) $
$ = 50/80 + 20/80 - 12/80 = 58/80 $

c) Seçilen öğretim üyesinin yüksek olduğu biliniyorken kadın olma olasılığı:

$ P(K|Y) = P(K inter Y)/P(Y) = (10/80)/(30/80) = 1/3 $

$ P(D|E) = P(D inter E)/P(E) = (12/80)/(50/80) $

#underline[*Örnek:*] Zar atıldığında çift geldiği biliniyorken bu sayının 6 olma olasılığı:

$ P(A|C) = P(A inter C)/P(C) = 1/3 $

#underline[*Örnek:*] İki zar atılıyor. Toplam 6 geldiği bilindiğinde zarların birinin 2 gelme olasılığı:

$ P(A|K) = P(A inter K)/P(K) = 2/5 $

b) Birinci zarın ikinci zardan büyük geldiği bilindiğine göre zarların toplamının 10 olma olasılığı nedir? (6,4)

$ P(A|B) = P(A inter B)/P(B) $
$ P(A inter B) = s(A inter B)/s(S) = 1/36 $
$ P(B) = s(B)/s(S) = 15/36 $
$ P(A|B) = (1/36)/(15/36) = 1/15 $
