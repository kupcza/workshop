# 9 CLI JavaScript (node.js, NPM) + moduly
### Pro veškerou práci využijte volání index.js z konzole, nikoliv v rámci prohlížeče.

Prerekvizita: splněný poslední úkol z 8-js.

---

Node.js's original module system is [CommonJs](https://nodejs.org/docs/latest/api/modules.html) (which uses `require` and `module.exports`).

Since Node.js was created, the [ECMAScript module system](https://nodejs.org/docs/latest/api/esm.html) (which uses `import` and `export`) has become standard and Node.js has added support for it.

Node.js will treat `.cjs` files as CommonJS modules and `.mjs` files as ECMAScript modules. It will treat `.js` files as whatever the default module system for the project is (which is CommonJS unless package.json says `"type": "module",`).

See also: [Differences between ES6 module system and CommonJs](https://nodejs.org/docs/latest/api/esm.html#esm_differences_between_es_modules_and_commonjs)

---

1) Pomocí `npm init` si vygenerujte soubory `package.json`
2) Do souboru přidejte `"type": "module",` viz výše
3) Zkopírujte si třídu ``InternetBanking`` do souboru ``InternetBanking.js``
4) Třídu `Transaction` si vytáhněte také do samostatného souboru `Transaction.js`
5) Upravte InternetBanking tak, aby pracoval výhradně s transakcemi, které jsou instancí třídy `Transaction` (viz `instanceof`)
6) V souboru index.js si pomocí `import ` naimportujte třídu `InternetBanking`
    ````
    import { InternetBanking } from "./InternetBanking.js"
   ````
   a vytvořte si takto instanci internetového bankovnictví. Cílem je, že každá třída `class` bude ve svém vlastním souboru a soubor `index.js` bude sloužit pouze pro vytvoření instancí a práci s daty.