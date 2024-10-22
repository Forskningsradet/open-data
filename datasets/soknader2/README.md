# Datasett: 	Søknader - versjon 2
 Sist oppdatert: 2024-08-13 06:55

 Filer:
 - [sample.csv](sample.csv) — eksempeldata
 - [dataset.csv](dataset.csv) — original datafil
- [meta.xml](meta.xml) — metadata (tittel og sist-oppdatert)
- [fields.xml](fields.xml) — feltdefinisjonar (XML)
- [fields.csv](fields.csv) — feltdefinisjonar (CSV)

## Feltdefinisjonar
Henta frå fields.csv

| shortname | name | content |
| --- | --- | --- |
| prosjektnummer | Prosjektnummer | Unik identifikasjon av den enkelte søknad/det enkelte prosjekt. Datagrunnlaget inneholder en linje for hvert prosjekt |
| prosjekttittel | Prosjekttittel | Tittel på søknad/prosjekt. Kan inneholde linjeskift. |
| soknadsfrist | Søknadsfrist | "De fleste søknader er knyttet til en søknadsfrist, søknader uten søknadsfrist er enten søknader i forbindelse med en løpende utlysning eller manuelt opprettede prosjekter." |
| soknadsdato | Søknadsdato | Dato for innsendt søknad |
| utlysnings_id | UtlysningsID | Unik identifikasjon av den enkelte utlysningen |
| utlysningsaktivitet | Utlysningsaktivitet | Aktiviteten som lyser ut midler til forskning og innovasjon. Sammenfaller ofte med  |
| "Akivitet |  men ved fellesutlysninger/flytting av søknader vil det være avvik mellom utlysningsaktivitet og aktivitet." |  |
| utlysningtittel | Utlysningtittel | Tittel på den enkelte utlysningen av forskningsmidler |
| prosjekttype | Prosjekttype | "Beskrivelse av prosjektene på tvers av virkemiddelhierarkiet - inneholder verdiene Prosjektstøtte, Institusjonsstøtte, Personlig stipend og Andre" |
| soknadstype | Søknadstype | Søknadstypen beskriver hvilke vurderingskriterier og krav til søknaden som gjelder. Gamle søknadstyper er så godt det lar seg gjøre konvertert til nye søknadstyper fra 2019/2020. Se https://www.forskningsradet.no/sok-om-finansiering/midler-fra-forskningsradet/nye-soknadstyper-i-2019/ |
| soknadstypevariant | Søknadstypevariant | Søknadstypevariant er underkategorier av søknadstyper fra og med 2019/2020. Der det er relevant er også eldre søknader/prosjekter konvertert til søknadstypevarianter.  |
| sokstart | Søkstart | Søknadens starttidspunkt |
| sokslutt | Søkslutt | Søknadens sluttidspunkt |
| prosjektfase | Prosjektfase | "Et prosjekt har til en hver tid én prosjektfase - inneholder verdiene Mottatt, Vurderes, Avslag, Bevilgning og Avsluttet. Prosjekter som har fått støtte har enten fasen Bevilgning (fremdeles et aktivt prosjekt) eller Avsluttet" |
| prosjektstart | Prosjektets fra-år | Prosjektets oppstartsår - kan avvike fra tidspunkt i søknaden ved for eksempel forsinkelser |
| prosjektslutt | Prosjektets til-år | Prosjektets sluttår - kan avvike fra tidspunkt i søknaden ved for eksempel forsinkelser |
| prosjektleder_kjonn | Prosjektleders kjønn | Prosjektleders kjønn |
| prosjektansvarlig_type | Type prosjektansvarlig | Organisasjon eller person (gjelder kun ved personlig stipend). |
| prosjektansvarlig_navn | Prosjektansvarlig navn | "Prosjektansvarlig er den som har ansvaret for prosjektet. Flere samarbeidspartnere kan delta i prosjektet (og motta deler av prosjektbevilgningen fra Forskningsrådet), men navn på samarbeidspartner regnes som tauhetsbelagt informasjon. Navn på prosjektansvarlig skal være registrert på lavest mulig nivå i organisasjonen." |
| kortnavn | Prosjektansvarlig kortnavn | Overordnet navn på prosjektansvarlig organisasjon. Er stort sett fylt ut for organisasjoner innenfor UoH-sektoren og instituttsektoren. |
| organisasjonsnummer | Organisasjonsnummer | Organisasjonsnummer i Enhetsregisteret |
| kp1 | Kontraktspart 1 | "Kode på overordnet nivå om prosjektansvarlig - gruppert for hvert enkelt universitet, vitenskapelig høyskole eller høyskole, instituttgrupper og de enkelte regionale helseforetakene" |
| kp2 | Kontraktspart 2 | "Kode på mer deltaljert nivå - de enkelte fakultetene på universitetene, de enkelte helseforetak og institutter." |
| sektor | FoU sektor | "Fordeling av prosjektansvarlig på ulike sektorer - inneholder verdiene UH-sektor, instituttsektor, næringsliv, helseforetak, utlandet og øvrige" |
| kategori | FoU kategori | Inneholder en spesifisering av ulike undergrupper i den enkelte sektor - en oversikt kan finnes ved hjelp av venstremenyen i Prosjektbanken (Organisasjon) |
| kommune | Kommune | Kommune der forskningen finner sted |
| kommunenummer | Kommunenummer | Firesifret identifikator for kommuner |
| fylke | Fylke | Fylke der forskningen finner sted |
| fylkenummer | Fylkenummer |  |
| landsdel | Landsdel | Lansdel der forskningen finner sted |
| virkemiddel_sekvens | Virkemiddel sekvens | Brukes til å sortere virkemidlene |
| virkemiddel | Virkemiddel | "Det høyeste nivået i Forskningsrådets hierarki av finansieringsvirkemidler - inneholder verdiene Programmer, Frittstående prosjekter, Infrastruktur og institusjonelle tiltak, Nettverkstiltak, Forvaltning, Felleskostnader og Diverse FoU-relaterte aktiviteter" |
| hovedaktivitet_sekvens | Hovedaktivitet sekvens | Brukes til sortere hovedaktivitetene |
| hovedaktivitet | Hovedaktivitet | En mer detaljert gruppering av finansieringsvirkemidler - en oversikt kan finnes ved hjelp av venstremenyen i Prosjektbanken (Program/Aktivitet) |
| aktivitet | Aktivitetsnavn | "De enkelte prosjektene tilhører en aktivitet. Aktiviteten kan være et program eller en annen finansieringaktivitet som på grunnlag av en programplan med overordnede mål, lyser ut og forvalter midler til forskning og innovasjon for å nå målene i programplanen" |
| aktivitet_kode | Aktivitetskode | Kort kode for de ulike aktivitetene |
| fagomraade | Fagområde | Overordnet kategorisering av disipliner i Norsk inndeling av vitenskapsdisipliner. |
| fag | Fag | Kategorisering av disipliner i Norsk innedeling av vitenskapsdispliner |
| fagdisiplin | Fagdisiplin | Detaljert kategorisering av disipliner i Norsk inndeling av vitenskapsdisipliner |
| dr_stip_aarsverk | Dr.stip - antall årsverk | Antall årsverk phd tilknyttet prosjektet (helt eller delvis finansiert av Forskningsrådet) |
| postdok_aarsverk | Postdok - antall årsverk | Antall årsverk postdok tilknyttet prosjektet (helt eller delvis finansiert av Forskningsrådet) |
| sokt_belop | Søkt beløp | Totalbeløp søkt for hele prosjektperioden |
| tildelt_belop | Tildelt beløp | Totalt tildelt beløp for hele prosjektperioden |
