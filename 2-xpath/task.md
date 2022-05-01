# 2. XPATH

1. Otevřete si přiložený soubor file.xml a prohlídněte si, jaká data obsahuje
2. Vytvořte si nový soubor results.txt
3. Ve webovém prohlížeči si otevřete stránku [http://xpather.com](http://xpather.com)
4. Do spodní části okna vložte obsah souhoru file.xml
5. Vymyslete následující XPATH a zaznamenejte je do results.txt
   1. Zjisti všechny hodnoty elementu "id"
   2. Zjisti hodnotu elementu "name" ve 4. výskytu elementu "Pet"
   3. Zjisti hodnotu elementu "name" v posledním výskytu elementu "Pet"
   4. Zjisti hodnotu elementu "id" v předposledním výskytu elementu "Pet"
   5. Zjisti hodnotu všech elementů "name", které se nacházejí v elementu "Pet" na pozici <= 5
   6. Zjisti hodnotu všech elementů "id", kde je hodnota elementu "status" == available 
   7. Zjisti hodnotu všech elementů "status", kde je hodnota elementu "status" <> available a zároveň hodnota "name" = jimmy
   8. Vypiš všechny sudé elementy "Pet"
   9. Vypiš všechny liché elementy "Pet"
   10. Vypiš počet elementů "Pet", kde je hodnota elementu "name" = doggie
   11. Pro všechny výskyty "Pet" vypiš hodnotu v tomto tvaru "#id - name"