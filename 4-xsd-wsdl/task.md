# 3. XSD, WSDL + SoapUI

1. prohlédněte si strukturu souborů input.xsd, output.xsd a zkuste dle jejich popisu vytvořit validní XML (pro každý soubor)
2. Stáhněte si SoapUI (https://www.soapui.org/tools/soapui/) a trochu se s ním seznamte
3. Importujte přiložený Workshop.wsdl (nechte si vygenerovat request a potom i mock pro response)
4. Zkontrolujte, že struktura vygenerovaných REQ a RES je shodná s tou, kterou jste vytvořili v bodě 1

## WSDL

1. Vezměte si soubory input.xml a output.xml z předchozího zadání (3-xslt)
2. Zkuste napsat XSD pro každý ze souborů tak, aby již existující XML soubory odpovídaly XSD a bylo možné je tedy zvalidovat (tzn vzniknou input.xsd a output.xsd)
3. Vytvořte si jednoduché WSDL s jednou operací, která bude mít:
   1. input.xsd jako REQuest
   2. output.xsd jako RESponse
3. WSLD si zkuste naimportovat do SoapUI