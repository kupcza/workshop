# 7. JavaScript

1. Vytvořte si soubor data.js
2. Inicialitujte si proměnnou "object" s hodnotou JSON objektu ze souboru data.json (není třeba žádné API volání)
3. Do konzole vypište následující (zdrojem dat je vždy proměnná object):
   1. Vypište 4. výskyt objektu v poli
   2. Vypište hodnotu "category"
   3. Vytvořte nové pole objektů, které bude obsahovat jenom objekty se sudými indexy
   4. Vytvořte nové pole objektů, které bude obsahovat jenom objekty s lichými indexy
   5. Vytvořte nové pole objektů, které bude obsahovat jenom objekty, které obsahují "status" == "available"
   6. Vytvořte nový objekt, který bude mít následující strukturu:
      - items (pole)
         - id (index objektu)
         - orig_id (hodnota id)
         - category_name
         - images (all photoUrl in one line comma separated)
      - total_count (celkový počet položek)
      - pending_count (počet objektů které obsahují "status" == "pending")
      - available_count (počet objektů, které obsahují "status" == "available")
      - not_available_count (počet objektů, které splňují status <> "available" a zároveň v "tags" se nachází alespoň jeden tag, jehož id < 10)