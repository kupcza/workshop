# 8. CLI JavaScript (node.js, NPM)
### Pro veškerou práci využijte volání index.js z konzole, nikoliv v rámci prohlížeče.

---
1. Zprovozněte si node.js a NPM balíčkovací službu na svém PC
2. Otestujte si v CLI, že máte krok 1 funkční:
   - Zadejte: ```node -v``` konzole by měla vypsat verzi node.js. Např ```v16.16.0```
   - Zadejte: ```npm -v``` konzole by měla vypsat verzi npm. Např ```9.4.0```
3. V CLI se pronavigujte do tohoto adresáže a zadejte ```node index.js```, výstupem by mělo být vypsání  ```General Kenobi: Hello there!```
4. Zakomentujte volání fce ```greetings()``` a pokračujte na dalším řádku (původní kód ponechte)
5. Vytvořte fci ```square```, která bude mít na vstupu parametr ```a``` (číslo musí být větší než 0), vypočítá obsah čtverce a toto číslo vypište pomocí ```console.log()```
6. Vytvořte fci ```rectangle```, která bude mít dva vstupní parametry ```a``` a ```b``` (čísla musí být větší než 0), a která vypíše obsah obdélníku stejn ějako v předchozím bodě
7. Vytvořte fci ``highest``, která bude mít na vstupu pole čísel. Úkolem fce bude v tomto poli najít nejvyšší číslo a to vrátit / vypsat do konzole.
8. Vytvořte fci ``calculateGeometry``, která bude mít na vstupu dva parametry ``a`` a ``b``, přičemž ``b`` může zůstat prázdné. Tato fce vypočte obsah čtverce nebo obdélníku na základě toho, jaká data přijdou z parametrů. Tj, pokud nebude ``b`` vyplněno, jedná se pravděpodobně o čtverec
9. Zajistěte, aby všechny geometrické fce bylo možno volat i s hodnotou 0.1 a zároveň aby jako argument akceptovaly pouze číselné typy. Tzn aby nebylo možné zadat "xxx" jako hodnotu
10. Nastudujte si, co jsou to anonymní funkce a jak je možné je zavolat automaticky bez jejich zavolání
11. Nastudujte si, co je to ternární operátor a jak se používá
12. Napište fci, která bude mít jako vstupní hodnotu pole čísel (reálná čísla). Tato fce vrátí objekt s parametry:
    - ``count`` - počet prvků
    - ``min`` - minimální hodnota
    - ``max`` - maximální hodnota
    - ``total`` - součet hodnot
    - ``avg`` - aritmetický průměr
    - ``modus`` - modus
    - ``median`` - medián