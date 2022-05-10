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
      - (array) items (pole)
         - (int) id (index objektu)
         - (int) orig_id (hodnota id)
         - (int) category_name
         - (string) images (all photoUrl in one line comma separated)
      - (int) total_count (celkový počet položek)
      - (int) pending_count (počet objektů které obsahují "status" == "pending")
      - (int) available_count (počet objektů, které obsahují "status" == "available")
      - (int) not_available_count (počet objektů, které splňují status <> "available" a zároveň v "tags" se nachází alespoň jeden tag, jehož id < 10)
   7. Kód z předchozího bodu rozšiřte následovně:
      - každý objekt v poli "items" rozšiřte o následující atributy:
        - (string) tag_names: jedná se o všechny hodnoty tags[].name sloučené do jednoho stringu (comma separated)
        - (object) dynamic: v následující struktuře key: value
          - {item.category.name} : {item.category.id}
          - {item.category.id} : {item.category}