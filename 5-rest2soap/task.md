# Úkol

1. Z OpenAPI rozhraní (openapi.yaml zde v repo) si vygeneruj validní request (JSON, bez hlaviček)
2. Tento JSON si převeď na XML
3. Vytvoř si nové XML, které bude obsahovat element, kam lze vložit další lementy pro naplnění hodnot z HTTP hlaviček a potom ve druhé části zde bude prostor pro XML z předchozího bodu
4. Nad nově vzniklým XML vytvoř XSL transformaci tak, aby odpovídala requestu dle request.xsd a také zkontroluj, zda existuje element brand (z původního requestu) a zda nabývá hodnot (1, 2 nebo 3), pokud ne, vyplň hodnotou "0"
5. Vygeneruj request.xml
6. Vytvoř novou XSL transformaci, která bude simulovat BE, tzn za pomoci request.xml vytvoří response.xml dle response.xsd. V rámci simulace platí následující:
   1. Do complex elementu places vytvoř 10x complex element "item"
   2. Element "id" vyplníš hodnotami 1-10 (popořadě), "type" přebereš z REQ a do "hours" přidáš 7x element "hour", kde vyplníš každý den v týdnu.
   3. "Day" ve tvaru "Po", "Út", "St", ...
   4. "from"/"to" následovně
      - Po - Pá od 8:00 do (výpočet 8:00 + 8h)
      - Víkend bude CLOSED
   5. Element "brandName" vyplň následovně:
      - pokud "brand" == 1 => "ČSOB"
      - pokud "brand" == 2 => "ČSOB SK"
      - pokud "brand" == 1 => "Česká pošta"