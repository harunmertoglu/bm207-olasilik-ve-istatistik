#set page(numbering: "1")

= Olasılık ve İstatistik Dersi — BM207

\

- #underline[*Olasılık*]: Rassal olayları ve bu olayların gerçekleşme biçimlerini matematiksel yöntemlerle inceleyen bilim dalıdır.

- Olasılık teorisinin temelini *rassal deney*, *örnek uzay* ve *olay* kavramları oluşturur.

== Rassal Deney

- Aynı koşullar altında tekrarlandığında farklı sonuçlar verebilen ve sonucu önceden kesin olarak belirlenemeyen deneylere *rassal deney* denir.

#h(1em)#underline[*Örnek:*] Para atmak, zar atmak veya öğrencilerin derse varış sürelerini gözlemlemek rassal deneylere örnek olarak verilebilir.

== Örnek Uzay

- Bir rassal deneyin gerçekleşebilecek tüm mümkün sonuçlarının kümesine *örnek uzay* denir. Örnek uzay genellikle $S$ ile gösterilir.

- Örnek uzaydaki her bir elemana *örnek nokta* denir.

- Örnek uzay;
  - sonlu sayıda elemana sahipse *sonlu örnek uzay*,
  - doğal sayılar kümesiyle eşlenebiliyorsa *sayılabilir sonsuz örnek uzay*,
  - bu iki durumun dışında kalıyorsa *sayılamaz örnek uzay* olarak adlandırılır.

Bir deney $n$ kez tekrarlanıyor ve her tekrarda $r$ farklı sonuç ortaya çıkabiliyorsa, genel durumda örnek uzayın eleman sayısı:

$ s(S) = r^n $

şeklinde ifade edilir.

Burada:

- $r$: Deneyin bir kez uygulanması sonucunda ortaya çıkabilecek farklı sonuçların sayısıdır.
- $n$: Deneyin tekrar sayısıdır.

#h(1em)#underline[*Not:*] Bu ifade genel bir gösterimdir. Deneyin yapısına göre örnek uzayın oluşturulma biçimi değişebilir.

=== Örnekler

#underline[*Örnek 1:*] Hilesiz bir para bir kez atılsın.

Olası sonuçlar:

$ Y, T $

Örnek uzayın eleman sayısı:

$ s(S) = 2^1 = 2 $

Örnek uzay:

$ S = {Y, T} $


#underline[*Örnek 2:*] Hilesiz bir para iki kez atılsın.

$ s(S) = 2^2 = 4 $

$ S = {Y Y, Y T, T Y, T T} $


#underline[*Örnek 3:*] İki öğrencinin cinsiyetleri $E$ ve $K$ ile gösterilsin.

$ s(S) = 2^2 = 4 $

$ S = {E E, E K, K E, K K} $


#underline[*Örnek 4:*] Bir zar iki kez atılsın.

Her atışta $6$ farklı sonuç bulunduğundan:

$ s(S) = 6^2 = 36 $

Örnek uzay:

$ S = {(1,1), (1,2), dots, (1,6), (2,1), (2,2), dots, (6,6)} $


#h(1em)#underline[*Önemli:*] Bir olasılık probleminde örnek uzayın doğru şekilde oluşturulması, problemin çözümündeki temel adımlardan biridir.


== Olay

- Örnek uzaydaki bir veya birden fazla örnek noktadan oluşan kümeye *olay* denir.

- Başka bir ifadeyle, örnek uzayın her alt kümesi bir olaydır.

- Boş küme de bir olaydır ve *imkânsız olay* olarak adlandırılır.

$ emptyset $

- Örnek uzayın tamamı ise *kesin olaydır*.

$ S $


=== Basit Olay

- Bir deneyin yalnızca tek bir sonucunu içeren olaylara *basit olay* denir.

- Örnek uzayda kaç farklı sonuç varsa o kadar basit olay vardır.

- Notasyon: $A_1$, $A_2$, $B_2$, $C_5$, $E_6$

#underline[*Örnek:*] Bir para iki kez atılsın.

$ s(S) = 2^2 = 4 $

Bu durumda dört basit olay vardır:

$ E_1 = {Y Y} $

$ E_2 = {Y T} $

$ E_3 = {T Y} $

$ E_4 = {T T} $

Örnek uzay, bütün basit olayların birleşiminden oluşur:

$ S = E_1 union E_2 union E_3 union E_4 $


=== Birleşik Olay

- Bir deneyin birden fazla sonucunu içeren olaylara *birleşik olay* denir.

Birleşik olaylar genellikle $A$, $B$, $C$, $dots$ gibi harflerle gösterilir.


#underline[*Örnek:*] Bir para üç kez atılsın.

Örnek uzayın eleman sayısı:

$ s(S) = 2^3 = 8 $

Örnek uzay:

$ S = {Y Y Y, Y Y T, Y T Y, T Y Y, Y T T, T Y T, T T Y, T T T} $

$ A = {Y Y Y, Y Y T} $

$A$ olayı, ilk iki atışta yazı gelmesi olayıdır.

$ B = {Y Y Y, Y Y T, Y T Y, T Y Y} $

$B$ olayı, üç atışta en az iki kez yazı gelmesi olayıdır.

Hem $A$ hem de $B$, birden fazla örnek nokta içerdiği için birleşik olaydır.


== Ayrık Olaylar

- İki olay aynı anda gerçekleşemiyorsa bu olaylara *ayrık olaylar* denir.

$ A inter B = emptyset $

Ayrık olaylarda iki olayın kesişimi imkânsız olaydır.

Genel olarak:

$ P(A union B) = P(A) + P(B) - P(A inter B) $

Eğer $A$ ve $B$ ayrık olaylarsa:

$ A inter B = emptyset $

olduğundan:

$ P(A union B) = P(A) + P(B) $


=== Örnek

Bir para üç kez atılsın.

Aşağıdaki olaylar tanımlansın:

- $A$: Bir kez yazı gelmesi.
- $B$: En fazla bir kez yazı gelmesi.
- $C$: Hiç tura gelmemesi.
- $D$: En az iki kez tura gelmesi.

Bu olayların ikişerli olarak ayrık olup olmadığını inceleyelim.

=== Ayrık Olay Örneğinin Çözümü

Bir paranın üç kez atılması deneyinde daha önce tanımlanan olaylar:

$ A = {Y T T, T Y T, T T Y} $

$ B = {Y T T, T Y T, T T Y, T T T} $

$ C = {Y Y Y} $

$ D = {T T Y, T Y T, Y T T, T T T} $

Burada:

- $A$, $B$ ve $D$ birden fazla sonuç içerdiği için *birleşik olaydır*.
- $C$ yalnızca bir sonuç içerdiği için *basit olaydır*.

$ A inter B = A $

olduğundan $A$ ve $B$ olayları ayrık değildir.

Buna karşılık:

$ A inter C = emptyset $

olduğundan $A$ ve $C$ ayrık olaylardır.


== Tümleyen Küme

- $A$, örnek uzay $S$ üzerinde tanımlanmış herhangi bir olay olsun. Örnek uzayda bulunup $A$ olayında bulunmayan tüm sonuçların oluşturduğu kümeye *$A$ olayının tümleyeni* denir.
#image("hafta-01/assets/image-5.png", width: 40%)

$ overline(A) = {x : x in S, x in.not A} $

$A$ olayının tümleyeni $overline(A)$, $A^c$ veya $A'$ biçimlerinde gösterilebilir.

Bir olay ile tümleyeni birbirinden ayrık olduğundan:

$ A inter overline(A) = emptyset $

Ayrıca bir olay ile tümleyeninin birleşimi örnek uzayın tamamını verir:

$ A union overline(A) = S $

Buna bağlı olarak:

$ P(A inter overline(A)) = 0 $

$ P(A union overline(A)) = 1 $


== Kesişim Kümesi

- $A$ ve $B$, aynı örnek uzay üzerinde tanımlanmış iki olay olsun. Hem $A$ hem de $B$ olayında bulunan ortak elemanların oluşturduğu kümeye *$A$ ve $B$ olaylarının kesişimi* denir.

#image("hafta-01/assets/image-4.png", width: 30%)

Kesişim işlemi $A inter B$ ile gösterilir.

$ A inter B = {x : x in A " ve " x in B} $


=== Örnek

Aşağıdaki olaylar tanımlansın:

$ A = {t : 10 <= t <= 60} $

$ B = {t : 25 <= t <= 50} $
\

\

\
$A$ ve $B$ kümelerinin kesişimi:

#image("hafta-01/assets/image-3.png", width: 50%)

$ A inter B = {t : 25 <= t <= 50} $

olur.

Burada $B$ kümesinin tüm elemanları aynı zamanda $A$ kümesinin de elemanı olduğundan:

$ B subset A $

ve dolayısıyla:

$ A inter B = B $


== Birleşim Kümesi

- $A$ ve $B$ gibi iki olaydan en az birine ait olan tüm elemanların oluşturduğu kümeye *birleşim kümesi* denir.

Birleşim işlemi $A union B$ ile gösterilir.

$ A union B = {x : x in A " veya " x in B} $


=== Örnek

Yukarıdaki:

$ A = {t : 10 <= t <= 60} $

$ B = {t : 25 <= t <= 50} $

kümeleri için $B subset A$ olduğundan:

$ A union B = {t : 10 <= t <= 60} $

yani:

$ A union B = A $


== Fark Kümesi

- $A$ kümesinde bulunup $B$ kümesinde bulunmayan elemanların oluşturduğu kümeye *$A$ ile $B$ kümelerinin farkı* denir.

#image("hafta-01/assets/image-2.png", width: 40%)

$ A - B = A|B = A inter overline(B) = A inter B^c $ 

Başka bir ifadeyle:

$ A - B = {x : x in A " ve " x in.not B} $


=== Örnek

Aşağıdaki kümeler tanımlansın:

$ S = {x : x > 20} $

$ A = {x : x > 80} $

$ B = {x : x < 150} $

$ C = {x : 40 < x < 60} $

Bu kümeler için:


#underline[*a)*] $A$, $B$ ve $C$ kümelerinin ortak kesişimi:

$ A inter B inter C = emptyset $

Çünkü $A$ için $x > 80$ olması gerekirken, $C$ için $40 < x < 60$ olması gerekir. Bu iki koşul aynı anda sağlanamaz.


#underline[*b)*] $A$ ile $B$ kümelerinin farkı:

$ A - B = A inter overline(B) $

$ A - B = {x : x > 150} $

Dolayısıyla:

$ A - B = overline(B) $

ve:

$ overline(B) subset A $


#underline[*c)*] $A$ ile $C$ kümelerinin farkı:

$ A - C = A inter overline(C) $

$A$ ve $C$ kümeleri ortak eleman içermediğinden:

$ A - C = A $


== Bazı Küme Özellikleri

*Tümleyenin tümleyeni:*

$ overline(overline(A)) = A $

*Örnek uzayın tümleyeni:*

$ overline(S) = emptyset $

*Boş kümenin tümleyeni:*

$ overline(emptyset) = S $

*Boş küme ile kesişim:*

$ A inter emptyset = emptyset $

*Bir küme ile tümleyeninin kesişimi:*

$ A inter overline(A) = emptyset $

*Bir küme ile tümleyeninin birleşimi:*

$ A union overline(A) = S $


=== Değişme Özelliği

$ A union B = B union A $

$ A inter B = B inter A $


=== Birleşme Özelliği

$ A union (B union C) = (A union B) union C $


=== Dağılma Özelliği

$ A union (B inter C) = (A union B) inter (A union C) $


=== De Morgan Kuralı

$ overline(overline(A) inter overline(B)) = A union B $


=== Fark Kümesi

$ A - B = A inter overline(B) $

== Örnekler

#underline[*Örnek 1:*] Bir para atılsın. İlk atışta tura gelirse bir zar atılsın. Aksi durumda para iki kez daha atılsın ve deney sonlandırılsın.

#image("hafta-01/assets/image-1.png", width: 30%)

Bu durumda örnek uzay:

$ S = {"YYY", "YYT", "YTY", "YTT", "T1", "T2", "T3", "T4", "T5", "T6"} $

olur.

Dolayısıyla:

$ s(S) = 10 $

#h(1em)#underline[*Not:*] Bu deneyde izlenen yol sonuca bağlı olarak değiştiğinden örnek uzayın eleman sayısı doğrudan $r^n$ biçiminde hesaplanmamıştır.


#underline[*Örnek 2:*] Bir zar, ilk kez $6$ gelene kadar atılsın.

#underline[*a)*] Örnek uzayın kaç elemanlı olduğunu belirleyelim.

İlk atışta deneyin bitmesi için:

$ {6} $

İkinci atışta deneyin bitmesi için:

$ {(1,6), (2,6), (3,6), (4,6), (5,6)} $

Üçüncü atışta deneyin bitmesi için:

$ {(1,1,6), (1,2,6), dots} $

şeklinde sonuçlar elde edilir.

Bu süreç herhangi bir atışa kadar devam edebileceğinden örnek uzay *sonsuz elemanlıdır*.


#underline[*b)*] $n$. atışta ilk kez $6$ gelmesi olayı $E_n$ olarak tanımlansın. $E_n$ olayının eleman sayısını belirleyelim.

$ s(E_1) = 1 = 5^0 \

  s(E_2) = 5 = 5^1 \

  s(E_3) = 25 = 5^2 $

Buradan genel olarak:

$ s(E_n) = 5^(n-1) $

elde edilir.


#underline[*c)*] Aşağıdaki olayın ne ifade ettiğini inceleyelim:

$ (union.big_(n=1)^5 E_n)^c $

Bu ifade:

$ (E_1 union E_2 union E_3 union E_4 union E_5)^c $

şeklinde de yazılabilir.

$E_1 union E_2 union dots union E_5$ olayı, ilk $5$ atıştan birinde ilk kez $6$ gelmesini ifade eder.

Dolayısıyla tümleyeni, ilk beş atışta $6$ gelmemesi olayını ifade eder.


#underline[*Örnek 3:*] $M$ ve $N$ noktaları arasındaki bir elektrik devresinde;

#image("hafta-01/assets/image-6.png", width: 70%)

- $a$ düğmesinin bozuk olması olayı $A$,
- $b_k$ düğmesinin bozuk olması olayı $B_k$, $k = 1, 2, 3$,
- $M$ ve $N$ noktaları arasında devrenin çalışmaması olayı ise $C$

olarak tanımlansın.



$ C = (A union B_1) inter (A union B_2) inter (A union B_3) $

ve:

$ C = A union (B_1 inter B_2 inter B_3) $


== Örnek Noktalarını Sayma Kuralları

=== Toplama Kuralı

- Birbirinden ayrık $k$ tane deney olsun.

- Birinci deney $n_1$, ikinci deney $n_2$, $dots$, $k$. deney ise $n_k$ farklı şekilde sonuçlanabiliyorsa, bu deneylerin oluşturabileceği toplam farklı sonuç sayısı:

$ n_1 + n_2 + dots + n_k $

olur.

Bu kurala *toplama kuralı* denir.


#underline[*Örnek:*] $A$ şehrinden $B$ şehrine gitmek için $3$ farklı karayolu, $2$ farklı denizyolu ve $4$ farklı havayolu bulunduğunu düşünelim.

$A$ şehrinden $B$ şehrine toplam:

$ 3 + 2 + 4 = 9 $

farklı şekilde gidilebilir.


=== Çarpma Kuralı

- İki deney düşünelim. Birinci deney $n_1$ farklı şekilde sonuçlansın.

- Birinci deney herhangi bir sonuçla tamamlandıktan sonra ikinci deney $n_2$ farklı şekilde sonuçlanabiliyorsa, iki deney birlikte:

$ n_1 dot n_2 $

farklı şekilde sonuçlanabilir.

Bu kurala *çarpma kuralı* denir.


#underline[*Örnek:*] İki zar atılsın. Bu deneyin örnek uzayındaki örnek nokta sayısını belirleyelim.

Her bir zarın $6$ farklı sonucu olduğundan:

$ s(S) = 6 dot 6 = 36 $

olur.

#underline[*Örnek:*] Aynı anda (art arda) bir para ve bir zar atılıyor, ayrıca bir iskambil destesinden bir kart seçiliyor. Bu deneyin örnek uzayında kaç örnek nokta bulunduğunu belirleyelim.

Paranın $2$, zarın $6$ ve iskambil destesinin $52$ farklı sonucu olduğundan çarpma kuralına göre:

$ s(S) = 2 dot 6 dot 52 = 624 $


#underline[*Örnek(Bu soruya çok benzer soru geçen senelerde çıkmış.):*] $9$ kişilik bir gruptan bir başkan, bir başkan yardımcısı ve bir denetmen seçilecektir. Bu seçim kaç farklı şekilde yapılabilir?

Başkan için $9$, başkan yardımcısı için kalan $8$ ve denetmen için kalan $7$ kişi arasından seçim yapılabilir.

$ 9 dot 8 dot 7 = 504 $


== Permütasyon

- Nesnelerin bir kısmının veya tamamının kendi içerisinde sıralanmasına *permütasyon* denir.

- $n$ tane farklı nesnenin tamamı kendi içerisinde sıralanacaksa:

$ P(n,n) = n! / (n-n)! = n! $

farklı sıralama yapılabilir.

- $n$ tane farklı nesnenin $r$ tanesi seçilip sıralanacaksa:

$ P(n,r) =  attach(P, bl: n, br: r) = n! / (n-r)! $

farklı sıralama yapılabilir.



=== Permütasyon Örnekleri

#underline[*Örnek 1:*] Tiyatroya giden $3$ kişi gişe önünde kaç farklı şekilde sıralanabilir?

Üç kişinin tamamı sıralandığından:

$ P(3,3) = 3! = 6 $ $ attach(P, bl: 3, br: 3) $

farklı sıralama yapılabilir.


#underline[*Örnek 2:*] $a$, $b$, $c$ ve $d$ olmak üzere dört farklı harften üçü, her harf yalnızca bir kez kullanılmak şartıyla kaç farklı şekilde sıralanabilir?

Çarpma kuralıyla:

$ 4 dot 3 dot 2 = 24 $

Permütasyon formülüyle:
$ attach(P, bl: 4, br: 3) $

$ P(4,3) = 4! / (4-3)! = 24 $


#h(1em)#underline[*Not:*] Harflerin birden fazla kez kullanılmasına izin verilseydi her konum için yeniden $4$ farklı harf seçilebilirdi.

Bu durumda:

$ 4 dot 4 dot 4 = 64 $

farklı sıralama elde edilirdi.


#underline[*Örnek 3:*] $7$ kitap içerisinden seçilen $3$ kitap, üç farklı yere kaç farklı şekilde sıralanabilir?

Birinci yer için $7$, ikinci yer için $6$, üçüncü yer için ise $5$ farklı seçim yapılabilir.

$ 7 dot 6 dot 5 = 210 $

Permütasyon formülüyle:
$ attach(P, bl: 7, br: 3) $

$ P(7,3) = 7! / (7-3)! = 210 $


#underline[*Örnek 4:*] Sessiz harfle başlayıp sessiz harfle biten ve ortasında sesli harf bulunan üç harfli bir kelime oluşturulsun.

"Tekin" kelimesi için:

$ 3 dot 2 dot 2 = 12 $

farklı kelime oluşturulabilir.

Harflerin tekrar kullanılmasına izin verilirse:

$ 3 dot 2 dot 3 = 18 $

farklı kelime oluşturulabilir.


== Kombinasyon

- Bir grup içerisinden belirli sayıda elemanın *sıra gözetilmeksizin* seçilmesine kombinasyon denir.

Permütasyonda elemanların sırası önemlidir. Örneğin:

$ "abc", "acb", "bac", "bca", "cab", "cba" $

farklı permütasyonlardır.

Kombinasyonda ise bu sıralamaların tamamı aynı elemanlardan oluştuğu için tek bir seçim olarak kabul edilir.
#image("hafta-01/assets/image-7.png", width: 30%)

$n$ tane farklı eleman arasından $r$ tanesi seçilecekse kombinasyon sayısı:

$ attach(C, bl: n, br: r) = C(n,r) = n! / ((n-r)! dot r!) $

şeklinde hesaplanır.

Permütasyon ile kombinasyon arasındaki ilişki:

$ attach(C, bl: n, br: r) = C(n,r) = P(n,r) / r! = attach(P, bl: n, br: r)/r! $


=== Kombinasyon Örneği

#underline[*Örnek:*] $10$ kişiden oluşan bir gruptan $4$ kişi bir asansöre binecektir. Bu $4$ kişi kaç farklı şekilde seçilebilir?

Burada kişilerin asansöre binme sırası önemli olmadığından kombinasyon kullanılır.

$ attach(C, bl: 10, br: 4) = C(10,4) = 10! / (6! dot 4!) = 210 $

#pagebreak()

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

#align(center)[#image("hafta-02/assets/kare-cember.svg", width: 34%)]

$ m(A) = 2 dot 2 - pi dot 1^2 = 4 - pi $
$ m(S) = 4 $
$ P(A) = (4-pi)/4 $

#underline[*Örnek:*] $(0,2)$ aralığındaki reel sayılardan iki tanesi seçildiğinde bu sayıların toplamlarının $0.5$'ten küçük olma olasılığı nedir?

$ 0 <= a <= 2, quad 0 <= b <= 2, quad a+b <= 1/2 $

#align(center)[#image("hafta-02/assets/ucgen-alan.svg", width: 33%)]

$ P = (1/8)/4 = 1/32 $

#pagebreak()

#underline[*Örnek:*] Uzunluğu $d$ olan bir doğru parçası üzerinde rastgele iki nokta işaretleniyor. Elde edilen bu üç parça ile üçgen oluşma olasılığı nedir?

#align(center)[#image("hafta-02/assets/dogru-ucgen.svg", width: 67%)]

$ x+y > d-x-y quad => quad x+y > d/2 $
$ x < d/2, quad y < d/2, quad x+y <= d $

*Not:* Hoca ilk eşitsizliği ters yazmış. Üçgen oluşması için $x+y > d/2$ olmalı.

#align(center)[#image("hafta-02/assets/ucgen-olasilik.svg", width: 46%)]

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
