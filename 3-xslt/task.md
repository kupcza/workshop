# 3. XSLT

1. Zprovozněte si XSLT transformace viz soubor README.md v kořenovém adresáři tohoto projektu
2. Otevřete si soubor input.xml a prohlédněte si, jaká data obsahuje
3. Otestuje si, že vám nastavení pro transformace funguje tím, že spustíte transformaci a v 
souboru output.xml bude následující obsah:
```
<root>
    <petName>fish</petName>
</root>

```
4. Smažte obsah níže uvedené ze souboru transformation.xsl
```
<!-- remove me later -->
<root>
    <petName>
        <xsl:value-of select="/pets/Pet[1]/name"/>
    </petName>
</root>
<!-- remove me later -->
```
5. Vytvořte novou transformaci tak, aby data měla následující strukturu:
   - zoo {1,1}
     - animals (pets) {1,10} (vypište prvních 10 pets/Pet - operátory pro porovnání https://docstore.mik.ua/orelly/xml/xslt/appb_04.htm)
       - animal (pets -> Pet) {1,u}
         - name (pets -> Pet -> name) {1,1}
6. Do root element "zoo" přidejte nový element "doesntHaveCategory" a mějte následující strukturu:
    - doesntHaveCategory {1,1}
        - animal {0,u} (všechna zvířata, která nemají category - použití fce not())
            - idName {1,1} (spojení hodnot id a name ve formátu "#id - name" - bez uvozovek)
7. Do root elementu "zoo" přidejte nový element "notAvailable" v následující struktuře:
   - notAvailable {1,1}
     - animal {0,u} (všechny Pet, které NEmají status "available", XSLT for-each - filtering output)
       - id {1,1}
       - name {1,1}
       - photoUrls {0,1} (pokud existuje v originálních datech alespoň jedna photoUrls/photoUrl)
         - url {0,u}
8. Do root elementu "zoo" přidejte nový element "customCategory" a mějte následující strukturu:
   - customCategory {1,1}
     - animal {0,u} (všechny Pet, kde category/name) je různý od hodnoty "string"
       - kopie celého Pet (použití copy-of)


----
### Vysvětlivky

 - {0,1} výskyt elementu je volitelný (optional) a je závislý na nějaké podmínce či existenci originálního elementu
 - {1,1} výskyt elementu je povinný a vyskytuje se právě jednou
 - {0,u} výskyt elementu je nepovinný a může se vyskytnout u-krát (neomezený počet opakování)
 - {1,u} výskyt elementu je povinný, tj vyskytuje se alespoň jednou, maximálně u-krát