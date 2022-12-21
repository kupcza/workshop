# Úkol

1. Z OpenAPI rozhraní (openapi.yaml zde v repo) si vygeneruj validní request (JSON, bez hlaviček)
2. Tento JSON si převeď na XML tak, aby odpovídalo struktuře REQ jako dříve vytvořený JSON
3. Vytvoř si nové XML, které bude mít následující strukturu:
   - root
     - headers {1,1} (zde jsou HTTP hlavičky z REQ viz openapi.yaml)
       - {header_name} {0,u} (kde {header_name} je název hlavičky a hodnota je hodnota hlavičky)
     - body {1,1} (zde bude vzniklé XML z bodu 2)
       - {request_xml_root_element} {1,1}
     - data (všechna potřebná data  pro vytvoření response) naplnit alespoň 10x:
       - name
       - address
         - street
         - house_no
         - town
         - postal
         - country
4. Vytvoř novou XSL transformaci, která bude simulovat BE, tzn za pomoci request.xml (viz výše) vytvoří response.xml dle response.xsd. V rámci simulace platí následující:
   1. Zvaliduj hodnotu brand z těla REQ (povoleny jsou hodnoty 1, 2 a 3). Pokud se liší vyplň hodnotu 0
   2. Do complex elementu places vytvoř 10x complex element "item" a začneš jej plnit hodnotami z původního XML z části "data"
   3. Element "id" vyplníš hodnotami 1-10 (popořadě), "type" přebereš z REQ a do "hours" přidáš 7x element "hour", kde vyplníš každý den v týdnu.
   4. "Day" ve tvaru "Po", "Út", "St", ...
   5. "from"/"to" následovně
      - Po - Pá od 8:00 do (výpočet 8:00 + 8h)
      - Víkend bude CLOSED
   6. Element "brandName" vyplň následovně:
      - pokud "brand" == 1 => "ČSOB"
      - pokud "brand" == 2 => "ČSOB SK"
      - pokud "brand" == 3 => "Česká pošta"
      - pokud se nerovná předchozím podmínkám => "unknown"