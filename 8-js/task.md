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