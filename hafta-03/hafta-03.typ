#set page(paper: "a4", margin: (x: 2.15cm, y: 1.7cm), numbering: "1")
#set text(font: "Libertinus Serif", size: 10.5pt, lang: "tr")
#set par(justify: true, leading: 0.55em)
#set heading(numbering: "1.")
#show heading.where(level: 1): set text(size: 16pt, weight: "bold")
#show heading.where(level: 2): set text(size: 12.5pt, weight: "bold")
#show heading.where(level: 3): set text(size: 11pt, weight: "bold")

= Olasılık ve İstatistik — 3. Hafta

== Koşullu Olasılık Örnekleri

#underline[*Örnek:*] 52 kartlık bir desteden rastgele bir kart seçiliyor. Seçilen kartın siyah olduğu bilindiğine göre maça olma olasılığı nedir?

$ A: "maça", quad B: "siyah kart" $
$ P(A|B) = P(A inter B)/P(B) = (13/52)/(26/52) = 1/2 $

#underline[*Örnek:*] Bir kavanozda 4 beyaz ve 2 siyah top vardır. Birbiri ardından, yerine koymadan iki top çekiliyor. $E$ ilk topun beyaz, $F$ en az bir topun beyaz gelmesi olayı olsun. $B$ beyazı, $S$ siyahı göstersin.

$ E = {"BB", "BS"}, quad F = {"BB", "BS", "SB"}, quad overline(F) = {"SS"} $

$ P(E) = 1/2, quad P(F) = 3/4 $

a) En az bir topun beyaz geldiği biliniyorken ilk topun beyaz olma olasılığı:

$ P(E|F) = P(E inter F)/P(F) = (4/6 dot 2/5 + 4/6 dot 3/5)/(4/6 dot 2/5 + 2/6 dot 4/5 + 4/6 dot 3/5) = 5/7 $

b) En az bir topun beyaz geldiği biliniyorken ilk topun beyaz gelmeme olasılığı:

$ P(overline(E)|F) = P(overline(E) inter F)/P(F) = (2/6 dot 4/5)/(4/6 dot 2/5 + 2/6 dot 4/5 + 4/6 dot 3/5) = 2/7 $
$ P(E|F) + P(overline(E)|F) = 5/7 + 2/7 = 1 $

c) Hiçbir topun beyaz olmadığı biliniyorken ilk topun beyaz olma olasılığı:

$ E inter overline(F) = emptyset quad => quad P(E|overline(F)) = 0 $

d) Hiçbir topun beyaz olmadığı biliniyorken ilk topun beyaz gelmeme olasılığı:

$ P(overline(E)|overline(F)) = (1/15)/(1/15) = 1 $
$ P(E|overline(F)) + P(overline(E)|overline(F)) = 1 $

== Koşullu Olasılık İçin Çarpma Kuralı

$A_1, A_2, dots, A_n$ olaylarının tümünün aynı anda gerçekleşme olasılığının koşullu olasılık cinsinden elde edilmesine *çarpma kuralı* denir.

$ P(B|A) = P(A inter B)/P(A) quad => quad P(A inter B) = P(A) dot P(B|A) $

#block(breakable: false)[
Herhangi $A_1, A_2, dots, A_n$ olaylarının birlikte gerçekleşmesi olasılığı:

$ P(A_1 inter dots inter A_n) = P(A_1) dot P(A_2|A_1) dot P(A_3|A_1 inter A_2) dot dots dot P(A_n|A_1 inter dots inter A_(n-1)) $

]

#underline[*Örnek:*] Bir torbada 5 beyaz ve 3 siyah top vardır. Yerine koymadan iki top seçiliyor. $A$ ilk topun, $B$ ikinci topun beyaz olması olayı ise:

$ P(A inter B) = P(A) dot P(B|A) = 5/8 dot 4/7 = 5/14 $

#block(breakable: false)[
#underline[*Örnek:*] 52 kartlık bir desteden yerine koymadan üç kart seçiliyor. $A_1$ ilk kartın 4, $A_2$ ikinci kartın 10, $A_3$ üçüncü kartın as olması olayı olsun.

$ P(A_1 inter A_2 inter A_3) = 4/52 dot 4/51 dot 4/50 = 8/16575 $
]

#underline[*Örnek:*] Sayısal lotoda 49 sayıdan altısı işaretleniyor.

a) Altı sayının tamamını tutturma olasılığı:

$ P = 6/49 dot 5/48 dot 4/47 dot 3/46 dot 2/45 dot 1/44 $

2. yol:

$ P = (binom(6,6) binom(43,0))/binom(49,6) $

b) En az üç sayıyı tutturma olasılığı:

$ P = (binom(6,3) binom(43,3) + binom(6,4) binom(43,2) + binom(6,5) binom(43,1) + binom(6,6) binom(43,0))/binom(49,6) $

#underline[*Örnek:*] 6 kişilik bir sınıfta en az iki kişinin aynı gün doğmuş olma olasılığı nedir?

$ P = 1 - 365/365 dot 364/365 dot 363/365 dot 362/365 dot 361/365 dot 360/365 $

== Bağımsız Olaylar

$A$ ve $B$ olaylarından birinin gerçekleşmesi veya gerçekleşmemesi diğerinin olasılığını değiştirmiyorsa bu olaylara *bağımsız olaylar* denir.

$ P(A inter B) = P(A) dot P(B) $

$ P(B|A) = P(A inter B)/P(A) = (P(A) dot P(B))/P(A) = P(B) $

Yani $A$ olayı, $B$ olayının olasılığını etkilemedi.

*Not:*

- Ayrık olaylarda $A inter B = emptyset$ ve $P(A inter B)=0$'dır.
- Bağımsız olaylarda $P(A inter B)=P(A)P(B)$'dir.

Ayrık olaylarda:

$ P(A union B) = P(A) + P(B) $

Bağımsız olaylarda:

$ P(A union B) = P(A) + P(B) - P(A) dot P(B) $

$A$ ve $B$ bağımsızsa aşağıdaki olay çiftleri de bağımsızdır:

$ P(overline(A) inter B) = P(overline(A)) dot P(B) $
$ P(A inter overline(B)) = P(A) dot P(overline(B)) $
$ P(overline(A) inter overline(B)) = P(overline(A)) dot P(overline(B)) $

#block(breakable: false)[
== Tam Bağımsızlık

$A$, $B$ ve $C$ olayları aşağıdaki koşulların tümünü sağlıyorsa *tam bağımsızdır*:

$ P(A inter B) = P(A)P(B) $
$ P(A inter C) = P(A)P(C) $
$ P(B inter C) = P(B)P(C) $
$ P(A inter B inter C) = P(A)P(B)P(C) $
]

#underline[*Örnek:*] Bir zar iki kez atılıyor. $A$ ilk atışın çift gelmesi, $B$ ikinci atışın 5 veya 6 gelmesi olayı olsun. $A$ ve $B$ bağımsız mıdır?

$ s(S) = 36, quad P(A)=18/36=1/2, quad P(B)=12/36=1/3 $
$ A inter B = {(2,5),(4,5),(6,5),(2,6),(4,6),(6,6)} $
$ P(A inter B)=6/36=1/6=1/2 dot 1/3=P(A)P(B) $

Dolayısıyla bağımsızdırlar.

2. yol: Koşullu olasılık üzerinden bulma.

$ P(A|B) = (1/6)/(1/3) = 1/2 = P(A) $

Veya tam tersi:

$ P(B|A)=P(B) $

== Toplam Olasılık Formülü

$B_1, B_2, dots, B_n$ olayları $S$ örnek uzayının bir parçalanışı olsun:

$ B_i inter B_j = emptyset quad (i != j), quad ⋃_(i=1)^n B_i = S $

$S$ örnek uzayında meydana gelen herhangi bir $A$ olayının olasılığı:

$ A = (A inter B_1) union dots union (A inter B_n) $
$ P(A) = sum_(i=1)^n P(A inter B_i) = sum_(i=1)^n P(B_i) dot P(A|B_i) $

#align(center)[#image("assets/toplam-olasilik.svg", width: 68%)]

#underline[*Örnek:*] Dört kavanozun ilk ikisinde 3 siyah ve 4 beyaz, üçüncüsünde 9 siyah ve 5 beyaz, sonuncusunda 1 siyah ve 6 beyaz bilye vardır. Rastgele seçilen bir kavanozdan bir bilye çekiliyor. Siyah bilye seçilme olasılığı nedir?

$ A: "siyah bilye", quad B_i: "i. kavanozun seçilmesi", quad P(B_i)=1/4 $

#table(
  columns: 5, align: center, inset: 6pt,
  table.header([Kavanoz], [I], [II], [III], [IV]),
  [Siyah / beyaz], [3 / 4], [3 / 4], [9 / 5], [1 / 6],
  [$P(A|B_i)$], [$3/7$], [$3/7$], [$9/14$], [$1/7$],
)

$ P(A)=1/4 dot 3/7 + 1/4 dot 3/7 + 1/4 dot 9/14 + 1/4 dot 1/7 = 23/56 $

#underline[*Örnek:*] Bir fabrikada üç makine üretim yapıyor. Birinci makine ikinci makinenin iki katı, ikinci ve üçüncü makineler ise eşit miktarda üretim yapıyor. Birinci ve ikinci makinenin ürünlerinin %2'si, üçüncünün ürünlerinin %4'ü kusurludur. Rastgele seçilen bir ürünün kusurlu olma olasılığı nedir?

$ B_1: "1. makine", quad B_2: "2. makine", quad B_3: "3. makine" $
$ P(B_1)=1/2, quad P(B_2)=P(B_3)=1/4 $
$ A: "kusurlu ürün" $
$ P(A)=1/2 dot 2/100 + 1/4 dot 2/100 + 1/4 dot 4/100 = 0.025 $

#underline[*Örnek:*] İki hilesiz, bir hileli para vardır. Hileli paranın iki yüzü de turadır. Rastgele seçilen bir para üç kez atılıyor. Üçünün de tura gelme olasılığı nedir?

$ B_i: "i. paranın seçilmesi", quad A: "TTT gelmesi" $
$ P(A|B_1)=P(A|B_2)=(1/2)^3=1/8, quad P(A|B_3)=1 $
$ P(A)=1/3 dot 1/8 + 1/3 dot 1/8 + 1/3 dot 1 = 5/12 $

== Bayes Formülü

$B_1, dots, B_n$ örnek uzayın ayrık bir parçalanışı olsun. $A$ olayının gerçekleştiği bilindiğinde $B_i$ olayının olasılığı:

$ P(B_i|A) = P(B_i inter A)/P(A) = (P(B_i) dot P(A|B_i))/(sum_(j=1)^n P(B_j) dot P(A|B_j)), quad P(A)>0 $

#block(breakable: false)[
#underline[*Örnek:*] $A$ torbasında 1'den 9'a, $B$ torbasında 1'den 5'e kadar numaralar vardır. Önce torbalardan biri eş olasılıkla, sonra o torbadan bir numara seçiliyor. Seçilen numaranın çift olduğu bilindiğine göre $A$ torbasından seçilmiş olma olasılığı nedir?

$ C: "çift sayı", quad P(A)=P(B)=1/2 $
$ P(C|A)=4/9, quad P(C|B)=2/5 $
$ P(C)=1/2 dot 4/9 + 1/2 dot 2/5 = 19/45 $
$ P(A|C)=(1/2 dot 4/9)/(19/45)=10/19 $
]

#underline[*Örnek:*] $A$ torbasında 4 beyaz ve 7 siyah, $B$ torbasında 7 beyaz ve 4 siyah top vardır. İki zar atılıyor. Sonuçlar $X_1$, $X_2$ olmak üzere, toplam 6'dan büyükse $A$ torbasından, aksi durumda $B$ torbasından bir top seçiliyor.

$ A: X_1+X_2>6, quad B: X_1+X_2<=6 $

$B$ olayının durum sayısı: $5+4+3+2+1=15$.

$ P(A)=21/36, quad P(B)=15/36 $

a) Seçilen topun siyah olma olasılığı:

$ S: "siyah top", quad P(S|A)=4/11, quad P(S|B)=7/11 $
$ P(S)=21/36 dot 4/11 + 15/36 dot 7/11 = C = 21/44 $

b) Seçilen topun siyah olduğu bilindiğine göre $B$ torbasından seçilmiş olma olasılığı:

$ P(B|S)=P(B inter S)/P(S)=(15/36 dot 7/11)/C = 5/9 $

#underline[*Soru:*] Birinci kavanozda 11 beyaz ve 2 siyah, ikinci kavanozda 2 beyaz ve 3 siyah top vardır. Birinciden bir top seçilip ikinciye atılıyor. Sonra ikinciden bir top çekiliyor. Bu topun siyah olduğu bilindiğine göre aktarılan ilk topun beyaz olma olasılığı nedir?

$ B: "aktarılan top beyaz", quad S: "ikinciden çekilen top siyah" $
$ P(B)=11/13, quad P(overline(B))=2/13 $

Beyaz aktarılırsa ikinci kavanozda 3 beyaz, 3 siyah; siyah aktarılırsa 2 beyaz, 4 siyah top olur.

$ P(S|B)=3/6, quad P(S|overline(B))=4/6 $
$ P(S)=11/13 dot 3/6 + 2/13 dot 4/6 = 41/78 $
$ P(B|S)=(11/13 dot 3/6)/(41/78)=33/41 $
