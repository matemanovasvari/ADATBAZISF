--1.	Melyik a leghosszabb barlang? Írassa ki a barlang nevét és hosszát méterben!

SELECT nev, hossz
FROM barlang
ORDER BY hossz DESC 
LIMIT 1

--or

SELECT nev, hossz
FROM barlang
WHERE hossz = (SELECT MAX(hossz) FROM barlang);

-- 2.	Listázza ki a „Fecske-lyuk” barlang településén található többi barlang nevét és kiterjedését!

SELECT nev, kiterjedes 
FROM barlang 
WHERE telepules = (SELECT telepules FROM barlang WHERE nev = "Fecske-lyuk") AND nev != "Fecske-lyuk";

-- 3.	Melyek azok a barlangok és mely településen találhatóak, amelyek mélysége az átlagos mélységet meghaladja?

SELECT nev, melyseg
FROM barlang
WHERE melyseg > (SELECT AVG(melyseg) FROM barlang)

-- 4.	Melyek azok a Bódvaszilas településhez tartozó barlangok, amelyek az átlagos hosszúságnál rövidebbek?

SELECT nev, melyseg
FROM barlang
WHERE melyseg < (SELECT AVG(hossz) FROM barlang) AND telepules = "Bódvaszilas";

-- 5.	A budapesti barlangok közül melyik a legmélyebb?

SELECT nev
FROM barlang
WHERE telepules = "Budapest"
ORDER BY melyseg DESC 
LIMIT 1;

-- or

SELECT nev
FROM barlang
WHERE telepules = "Budapest" AND melyseg = (SELECT MAX(melyseg) FROM barlang WHERE telepules = "Budapest");

-- 6.	Melyik a legrövidebb barlang? Melyik településen található?

SELECT nev, telepules
FROM barlang
ORDER BY hossz 
LIMIT 1;

-- or (van kettő ilyen hosszúságú barlang)

SELECT nev, telepules
FROM barlang
WHERE hossz = (SELECT MIN(hossz) FROM barlang);

-- 7.	Melyek a „Pisznice-barlang” településén lévő barlangok? Listázza a barlangok nevét, magasságát és mélységét úgy, hogy a „Pisznice-barlang” már nem jelenjen meg!

SELECT nev, kiterjedes 
FROM barlang 
WHERE telepules = (SELECT telepules FROM barlang WHERE nev = "Pisznice-barlang") AND nev != "Pisznice-barlang";