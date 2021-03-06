<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/bakalarska_prace">
        {
            "Nazev bakalarske prace": "<xsl:value-of select="nazev_bakalarske_prace"/>",
            "Jmeno autora": "<xsl:value-of select="jmeno_autora"/>",
            "Jmeno vedouciho": "<xsl:value-of select="jmeno_vedouciho"/>",
            "Program":
            [
            <xsl:for-each select="prakticka_cast/program">
                <xsl:sort select="@id" order="descending"/>
                {
                "ID": "<xsl:value-of select="@id"/>",
                "Programovaci jazyk": "<xsl:value-of select="programovaci_jazyk"/>",
                "Web verze": "<xsl:value-of select="web_verze"/>",
                "Desktop verze": "<xsl:value-of select="desktop_verze"/>",
                "Vyvojove prostredi": "<xsl:value-of select="vyvojove_prostredi"/>",
                "Datum testu": {
                "Den": "<xsl:value-of select="datum_testu/den"/>",
                "Mesic": "<xsl:value-of select="datum_testu/mesic"/>",
                "Rok": "<xsl:value-of select="datum_testu/rok"/>"
                },
                "Cas testu": {
                "Hodina": "<xsl:value-of select="cas_testu/hodina"/>",
                "Minuta": "<xsl:value-of select="cas_testu/minuta"/>"
                },
                "Pocitac": {
                "Typ pocitace": "<xsl:value-of select="pocitac/typ_pocitace"/>",
                "Vykon CPU v GHZ": "<xsl:value-of select="pocitac/vykon_CPU_GHZ"/>",
                "Pocet jader CPU": "<xsl:value-of select="pocitac/pocet_jader_CPU"/>",
                "Velikost RAM": "<xsl:value-of select="pocitac/velikost_RAM_GB"/>",
                "Typ disku": "<xsl:value-of select="pocitac/typ_disku"/>",
                "Velikost disku v GB": "<xsl:value-of select="pocitac/velikost_disku_GB"/>"
                },
                "Framework": {
                "Nazev frameworku": "<xsl:value-of select="framework/nazev_frameworku"/>",
                "Verze frameworku": "<xsl:value-of select="framework/verze_frameworku"/>",
                "Autor frameworku": "<xsl:value-of select="framework/autor_frameworku"/>",
                "Knizni verze": "<xsl:value-of select="framework/knizni_verze"/>",
                "ORM": "<xsl:value-of select="framework/ORM"/>"
                },
                "Databaze": {
                "Nazev databaze": "<xsl:value-of select="databaze/nazev_databaze"/>",
                "Autor databaze": "<xsl:value-of select="databaze/autor_databaze"/>",
                "Pocet tabulek": "<xsl:value-of select="databaze/pocet_tabulek"/>",
                "Tabulka":
                [
                <xsl:for-each select="databaze/tabulka">
                    {
                    "ID tabulky": "<xsl:value-of select="@id_tabulky"/>",
                    "Nazev tabulky": "<xsl:value-of select="nazev_tabulky"/>",
                    "Pocet sloupcu": "<xsl:value-of select="pocet_sloupcu"/>",
                    "Pocet radku": "<xsl:value-of select="pocet_radku"/>",
                    "Pocet cizich klicu": "<xsl:value-of select="pocet_cizich_klicu"/>"
                    }
                    <xsl:if test="position() != last()">,</xsl:if>
                </xsl:for-each>
                ]
                },
                "Vysledky": {
                    "Nacitani": {
                        "Pocet iteraci": "<xsl:value-of select="vysledky/nacitani/pocet_iteraci"/>",
                        "Vysledek v ms": "<xsl:value-of select="vysledky/nacitani/vysledek_v_ms"/>"
                    },
                    "Ukladani": {
                        "Pocet iteraci": "<xsl:value-of select="vysledky/ukladani/pocet_iteraci"/>",
                        "Vysledek v ms": "<xsl:value-of select="vysledky/ukladani/vysledek_v_ms"/>"
                    },
                    "Aktualizace": {
                        "Pocet iteraci": "<xsl:value-of select="vysledky/aktualizace/pocet_iteraci"/>",
                        "Vysledek v ms": "<xsl:value-of select="vysledky/aktualizace/vysledek_v_ms"/>"
                    }
                }
                }
                <xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>
            ]
        }
    </xsl:template>

</xsl:stylesheet>