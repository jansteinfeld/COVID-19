# COVID-19 Datensatz
Hier finden sich zwei Datensätze (*.xlsx und *.csv) mit Zahlen zu der aktuellen Entwicklung von bestätigten Covid-19-Fällen in Österreich. In den Datensätze werden sowohl Zahlen für Österreich Gesamt, als auch für die einzelnen österreichischen Bundesländer berichtet. Es finden sich sowohl Zahlen zu: *derzeit Erkrankte*, *Genesene* sowie *Verstorbene*.

## Quelle
- Bis zum 25.03.2020 15:00 wurden die Zahlen dieser Quelle entnommen:
[derStandard](https://www.derstandard.at/story/2000115810293/aktuelle-zahlen-zum-coronavirus)

- Ab dem 26.03.2020 08:00 stammen die Daten von der offiziellen Quelle des Bundesministeriums für Soziales, Gesundheit, Pflege und Konsumentenschutz
[BMSGPK](https://www.sozialministerium.at/Informationen-zum-Coronavirus/Neuartiges-Coronavirus-(2019-nCov).html)

### Update 2020-27-03
Die Zahlen, die auf der Seite des Sozialministeriums veröffentlicht sind, scheinen derzeit nicht ganz vertrauenswürdig zu sein. Beispielsweise weichen die Zahlen von der Homepage des BMSGPK und dem amtlichen Dashboard vom BMSGPK voneinander ab. Die kommunizierten Veröffentlichungszeiten von 08:00 und 15:00 werden leider auch nicht immer eingehalten (bspw. 27.03. 13:00). Aus diesen Grund werden hier bis auf Weiteres nur noch Zahlen von "Der Standard" berichtet/gesammelt.


## Datensatz
Variablenbeschreibung
- date (Datum)
- time (Uhrzeit, zu der die Zahlen veröffentlicht wurden. Ab 19.03.2020 werden zweimal täglich Zahlen veröffentlicht [08:00; 15:00]).
- variable (infected = derzeit erkrankt; recovered = genesen; death = verstorben; tests = Anzahl an durchgeführten Tests[^1])
- Bgld = Burgenland
- Ktn = Kärnten
- NÖ = Niederösterreich
- OÖ = Oberösterreich
- Sbg = Salzburg
- Stmk = Steiermark
- T = Tirol
- Vbg = Vorarlberg
- W = Wien (leider finden sich derzeit keine Zahlen auf Ebene der Bezirke)


[^1]: Zahlen, die am Vormittag vom BMSGPK bekannt gegeben wurden, wie viele Tests seit dem Vormittag des Vortages neu dazugekommen sind
