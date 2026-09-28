# BM207 — Olasılık ve İstatistik

Gazi Üniversitesi **BM207 Olasılık ve İstatistik** dersi için hazırlanan ders notları.

## Ana notlar

[`src/main.typ`](./src/main.typ) birikimli ana dosyadır. Her hafta önce kendi dosyasında hazırlanır; haftanın içeriği tamamlandığında ana dosyaya eklenir. Güncel ana çıktı: [BM207-Olasilik-Istatistik.pdf](./BM207-Olasilik-Istatistik.pdf).

Ana PDF'yi yeniden oluşturmak için proje kökünde:

```sh
typst compile --root . src/main.typ BM207-Olasilik-Istatistik.pdf
```

## Haftalık dosyalar

Her hafta `haftalar/` altında bağımsız bir dosyada hazırlanır. Yeni haftanın dosyası önceki haftaların içeriğini içermez. Ana dosya, tamamlanan haftaların içerikleri birleştirilerek güncellenir.

- **Birinci hafta:** [Typst kaynağı](./haftalar/01-birinci-hafta/src/birinci-hafta.typ) · [PDF](./haftalar/01-birinci-hafta/birinci-hafta.pdf)
- **İkinci hafta:** [Typst kaynağı](./haftalar/02-ikinci-hafta/src/ikinci-hafta.typ) · [PDF](./haftalar/02-ikinci-hafta/ikinci-hafta.pdf) · [Notlar](./haftalar/02-ikinci-hafta/README.md)

Haftalık PDF'leri proje kökünde şu komutlarla yeniden oluşturabilirsiniz:

```sh
typst compile --root . haftalar/01-birinci-hafta/src/birinci-hafta.typ haftalar/01-birinci-hafta/birinci-hafta.pdf
typst compile --root . haftalar/02-ikinci-hafta/src/ikinci-hafta.typ haftalar/02-ikinci-hafta/ikinci-hafta.pdf
```

Ana kaynak ve PDF şu anda birinci ve ikinci haftayı birlikte içerir. İkinci haftanın SVG çizimleri `haftalar/02-ikinci-hafta/assets/` klasöründe tutulur; ana kaynak bu görsellere haftalık klasörden başvurur.

## Klasör yapısı

```text
bm207-olasilik-ve-istatistik/
├── assets/                         # Ana notların görselleri
├── src/
│   └── main.typ                    # Dönem boyunca büyüyen ana kaynak
├── BM207-Olasilik-Istatistik.pdf   # Güncel birikimli PDF
├── haftalar/
│   ├── 01-birinci-hafta/
│   │   ├── assets/
│   │   ├── src/birinci-hafta.typ
│   │   └── birinci-hafta.pdf
│   └── 02-ikinci-hafta/
│       ├── README.md
│       ├── assets/
│       ├── src/ikinci-hafta.typ
│       └── ikinci-hafta.pdf
└── README.md
```
