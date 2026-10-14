#set page(paper: "a4", margin: (x: 2.15cm, y: 1.7cm), numbering: "1")
#set text(font: "Libertinus Serif", size: 10.5pt, lang: "tr")
#set par(justify: true, leading: 0.55em)
#set heading(numbering: "1.")
#show heading.where(level: 1): set text(size: 16pt, weight: "bold")
#show heading.where(level: 2): set text(size: 12.5pt, weight: "bold")
#show heading.where(level: 3): set text(size: 11pt, weight: "bold")

= Olasılık ve İstatistik — 4. Hafta

== Rassal Değişken

Örnek uzayın her bir örnek noktasını bir reel sayı ile eşleştiren fonksiyona *rassal değişken* denir.

$ X: S -> RR $

Rassal değişkenin tanım kümesi örnek uzay, değer kümesi ise reel sayılardır. Rassal değişkenler $X$, $Y$, $Z$ gibi büyük harflerle; aldıkları değerler $x$, $y$, $z$ gibi küçük harflerle gösterilir.

#underline[*Örnekler:*]

- Bir öğrencinin okula gidiş-dönüş süresi.
- Bir ailedeki çocuk sayısı.
- Bir takımın son beş yıl içinde her maçta attığı gol sayısı.
- Bir ailenin aylık doğal gaz tüketimi.

#underline[*Örnek:*] İki hilesiz para atılıyor. $X$ gelen turaların sayısını göstersin. $X$'in alacağı değerleri ve olasılıklarını belirleyiniz.

$ S={"YY","YT","TY","TT"}, quad s(S)=2^2=4 $
$ X: "gelen tura sayısı" = 0,1,2 $

#table(
  columns: 4, align: center, inset: 7pt,
  table.header([$x$], [0], [1], [2]),
  [$P(X=x)$], [$1/4$], [$2/4$], [$1/4$],
)

$ P(X=1)=2/4, quad P(X<=1)=P(X=0)+P(X=1)=3/4 $

#underline[*Örnek:*] Bir torbada 8 beyaz ve 3 siyah top vardır. Yerine koymadan üç top seçiliyor. $X$ seçilen beyaz top sayısı olmak üzere olasılık fonksiyonunu oluşturunuz.

$ s(S)=2^3=8 $

$ P(X=0)=P("SSS")=3/11 dot 2/10 dot 1/9=6/990=1/165 $

$ P(X=1)=P("BSS")+P("SBS")+P("SSB") $
$ =8/11 dot 3/10 dot 2/9 + 3/11 dot 8/10 dot 2/9 + 3/11 dot 2/10 dot 8/9 = 144/990=24/165 $

Yerine koymadan seçim için kombinasyon yöntemiyle:

$ P(X=2)=(binom(8,2)binom(3,1))/binom(11,3)=84/165=504/990 $
$ P(X=3)=(binom(8,3)binom(3,0))/binom(11,3)=56/165=336/990 $

#table(
  columns: 5, align: center, inset: 7pt,
  table.header([$x$], [0], [1], [2], [3]),
  [$P(X=x)$], [$6/990$], [$144/990$], [$504/990$], [$336/990$],
)

$ (6+144+504+336)/990=1 $

== Kesikli Rassal Değişken

$X$ rassal değişkeninin alabileceği değerlerin kümesi sonlu veya sayılabilir sonsuz ise $X$'e *kesikli rassal değişken* denir.

#underline[*Örnek:*] Ailedeki çocuk sayısı, bir kavşaktaki kaza sayısı, bir öğrencinin kitap sayısı. Yukarıdaki tura sayısı ve beyaz top sayısı da kesikli rassal değişkenlerdir.

$X$'in $x_i$ değerini alma olasılığı:

$ f_X(x_i)=P(X=x_i) $

Bu fonksiyona *olasılık fonksiyonu* (olasılık kütle fonksiyonu) denir. Şu koşulları sağlamalıdır:

$ 0<=f_X(x_i)<=1, quad sum_i f_X(x_i)=1 $

=== İlk Tura Gelene Kadar Atış Sayısı

#underline[*Örnek:*] Hilesiz bir para tura gelinceye kadar atılıyor. $X$ ilk tura dahil yapılan toplam atış sayısı olsun. Olasılık fonksiyonunu bulup bunun bir olasılık fonksiyonu olduğunu gösteriniz.

$ X in {1,2,3,dots} $

#table(
  columns: 6, align: center, inset: 6pt,
  table.header([$x$], [1], [2], [3], [4], [$dots$]),
  [Sonuç], [T], [YT], [YYT], [YYYT], [$dots$],
  [$f_X(x)$], [$1/2$], [$1/4$], [$1/8$], [$1/16$], [$dots$],
)

$ f_X(x)=cases((1/2)^x & quad x=1\,2\,3\,dots, 0 & quad "diğer durumlarda") $

$ sum_(x=1)^infinity (1/2)^x = 1/2 (1+1/2+(1/2)^2+dots)= (1/2)/(1-1/2)=1 $

a) $P(X=3.5)=0$.

b) $P(X<=3.5)=P(X<=3)=1/2+1/4+1/8=7/8$.

c) İlk tura gelene kadar 3 veya daha fazla atış yapılma olasılığı:

$ P(X>=3)=1-P(X<=2)=1-(1/2+1/4)=1/4 $

*Not:* $X$ kesikli bir rassal değişken ise $P(X<=a)$ ile $P(X<a)$ aynı olmak zorunda değildir.

#underline[*Örnek:*] Aynı deneyde para hileli olsun ve tura gelme olasılığı $1/4$ olsun. $X$ ilk tura gelene kadar yapılan toplam atış sayısıdır.

$ P(Y)=3/4, quad P(T)=1/4 $
$ P(X=1)=1/4, quad P(X=2)=3/4 dot 1/4, quad P(X=3)=(3/4)^2 dot 1/4 $
$ f_X(x)=cases(1/4 (3/4)^(x-1) & quad x=1\,2\,3\,dots, 0 & quad "diğer durumlarda") $

İlk tura elde edilinceye kadar 2'den fazla atış yapılma olasılığı:

$ P(X>2)=1-P(X<=2)=1-(1/4+3/4 dot 1/4)=9/16 $

=== Günlük Satılan Ürün Sayısı

#underline[*Örnek:*] Bir mağazanın bir günde sattığı ürün sayısı $X$ olsun. Olasılık fonksiyonu:

$ f_X(x)=cases(a x & quad x=1\,2\,dots\,20, a(25-x) & quad x=21\,22\,dots\,25, 0 & quad "diğer durumlarda") $

a) Bunun bir olasılık fonksiyonu olması için $a$ kaç olmalıdır?

$ sum_(x=1)^20 a x + sum_(x=21)^25 a(25-x)=1 $
$ a (20 dot 21)/2 + a(4+3+2+1+0)=1 $
$ 220a=1 quad => quad a=1/220 $

b) Bir günde 15 ürün satılma olasılığı:

$ P(X=15)=15/220=3/44 $

c) Bir günde 15'ten az ürün satılma olasılığı:

$ P(X<15)=sum_(x=1)^14 x/220=(14 dot 15)/(2 dot 220)=21/44 approx 0.4773 $

d) Bir günde 22'den az ürün satılma olasılığı:

$ P(X<22)=sum_(x=1)^20 x/220+P(X=21)=210/220+4/220=107/110 approx 0.9725 $

== Kesikli Rassal Değişken İçin Dağılım Fonksiyonu

Bir $X$ rassal değişkeninin *dağılım fonksiyonu* (birikimli olasılık fonksiyonu) $F_X(x)$ ile gösterilir. $X$'in $x$ değerine eşit veya daha küçük olma olasılığını verir:

$ F_X(x)=P(X<=x)=sum_(x_i<=x) f_X(x_i)=sum_(x_i<=x) P(X=x_i) $

*Not:*

$ f_X(x)=P(X=x) quad -> quad "olasılık fonksiyonu" $
$ F_X(x)=P(X<=x) quad -> quad "dağılım fonksiyonu (birikimli olasılık)" $

=== Dört Para Atışında Yazı Sayısı

#underline[*Örnek:*] Hilesiz bir para dört kez atılıyor. $X$ gelen yazı sayısını göstersin. Olasılık dağılımını, olasılık fonksiyonunu ve dağılım fonksiyonunu elde ediniz.

$ X in {0,1,2,3,4}, quad s(S)=2^4=16 $

#table(
  columns: (auto, 1fr, 1fr, 1.3fr, 1fr, 1fr), align: center, inset: 5pt,
  table.header([$x$], [0], [1], [2], [3], [4]),
  [Sonuçlar], [TTTT], [YTTT\ TYTT\ TTYT\ TTTY], [YYTT\ YTYT\ YTTY\ TYYT\ TYTY\ TTYY], [YYYT\ YYTY\ YTYY\ TYYY], [YYYY],
  [$f_X(x)$], [$1/16$], [$4/16$], [$6/16$], [$4/16$], [$1/16$],
)

$ f_X(x)=cases(binom(4,x) 1/2^4 & quad x=0\,1\,2\,3\,4, 0 & quad "diğer durumlarda") $

#align(center)[#image("assets/yazi-olasilik.svg", width: 66%)]

Birikimli değerler:

$ F_X(0)=1/16 $
$ F_X(1)=1/16+4/16=5/16 $
$ F_X(2)=1/16+4/16+6/16=11/16 $
$ F_X(3)=1/16+4/16+6/16+4/16=15/16 $
$ F_X(4)=1 $

$ F_X(0.5)=F_X(0.0003)=1/16, quad F_X(1.5)=5/16 $
$ F_X(2.5)=11/16, quad F_X(3.7)=15/16, quad F_X(6)=1 $

#block(breakable: false)[
Dağılım fonksiyonu:

$ F_X(x)=cases(0 & quad x<0, 1/16 & quad 0<=x<1, 5/16 & quad 1<=x<2, 11/16 & quad 2<=x<3, 15/16 & quad 3<=x<4, 1 & quad x>=4) $
]

#align(center)[#image("assets/yazi-dagilim.svg", width: 78%)]

#block(breakable: false)[
== Dağılım Fonksiyonunun Özellikleri

+ $lim_(x->-infinity) F_X(x)=0$.
+ $x_1<x_2$ ise $F_X(x_1)<=F_X(x_2)$; yani fonksiyon azalmayandır.
+ $lim_(x->infinity) F_X(x)=1$.
+ $X$ kesikli bir rassal değişken ise $F_X(x)$ basamaklı bir fonksiyondur.
]

=== Olasılık ve Dağılım Fonksiyonlarıyla Hesaplama

#underline[*Örnek:*] $X$'in olasılık fonksiyonu:

$ f_X(x)=cases(x/55 & quad x=1\,2\,dots\,10, 0 & quad "diğer durumlarda") $

a) Bunun bir olasılık fonksiyonu olduğunu gösteriniz.

$ f_X(x)>=0, quad sum_(x=1)^10 f_X(x)=1/55(1+2+dots+10)=1/55 (10 dot 11)/2=1 $

b) Dağılım fonksiyonunu bulunuz.

$ F_X(x)=P(X<=x)=sum_(j=1)^x f_X(j)=sum_(j=1)^x j/55 $
$ =1/55 (1+2+dots+x)=1/55 (x(x+1))/2=(x(x+1))/110 $

$ F_X(x)=cases(0 & quad x<1, (x(x+1))/110 & quad 1<=x<10, 1 & quad x>=10) $

1) $X$'in 3 değerini alma olasılığı:

$ P(X=3)=f_X(3)=3/55 $

2) $X$'in en fazla 3 olması:

$ P(X<=3)=P(X=1)+P(X=2)+P(X=3)=(1+2+3)/55=6/55 $
$ P(X<=3)=F_X(3)=(3 dot 4)/110=6/55 $

3) $P(2<=X<=4)$:

$ P(2<=X<=4)=(2+3+4)/55=9/55 $
$ P(2<=X<=4)=F_X(4)-F_X(1)=(4 dot 5-1 dot 2)/110=9/55 $

4) $P(2<X<=4)$:

$ P(2<X<=4)=(3+4)/55=7/55 $
$ P(2<X<=4)=F_X(4)-F_X(2)=(4 dot 5-2 dot 3)/110=7/55 $

5) $P(2<=X<4)$:

$ P(2<=X<4)=(2+3)/55=5/55=1/11 $
$ P(2<=X<4)=F_X(3)-F_X(1)=(3 dot 4-1 dot 2)/110=1/11 $

6) $P(2<X<4)$:

$ P(2<X<4)=P(X=3)=3/55 $
$ P(2<X<4)=F_X(3)-F_X(2)=(3 dot 4-2 dot 3)/110=3/55 $

7) $P(X>3)$:

$ P(X>3)=1-P(X<=3)=1-F_X(3)=1-(3 dot 4)/110=49/55 $

== Sürekli Rassal Değişken
