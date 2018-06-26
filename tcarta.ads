with trie;
with queue;
with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

package tcarta is 

type tcategoria is (Entrant, Primer, Segon, Postres, Begudes);
type tqualificacio is (Bo, Mitja, Dolent);
subtype ranglletres is Character Range '@'..'Z';
subtype rangcodi is Natural Range 1..4;
type tcodi is array (rangcodi) of ranglletres;

ja_existeix: exception;
no_existeix: exception;
categoria_erronia: exception;
codi_erroni: exception;
qualificacio_erronia: exception;
no_comentari: exception;

type carta is limited private;

-- procediments obligatoris
procedure cartabuida (c: out carta); -- buidar la TAD 
procedure posarelement (c: in out carta; cat : in tcategoria; k: in tcodi; nom : in Unbounded_String); -- posar dins una categoria un element
procedure imprimirelements (c: in carta; cat: in tcategoria); -- imprimir els elements d'una categoria
procedure eliminarelement (c: in out carta; cat: in tcategoria; k: in tcodi); --eliminar un element d'una categoria
procedure posarcomentari (c: in out carta; cat: in tcategoria; k : in tcodi; q: in tqualificacio; comentari: in Unbounded_String); -- posar un comentari a un element
function consultarcomentari (c: in carta; cat: in tcategoria; k: in tcodi; q: in tqualificacio) return Unbounded_String; -- consultar el comentari d'una element
function existeixcomentari (c: in carta; cat: in tcategoria; k: in tcodi; q: in tqualificacio) return Boolean; -- retornar si existeix comentari
procedure eliminarcomentari (c: in out carta; cat: in tcategoria; k: in tcodi; cal: in tqualificacio); --eliminar comentari

function to_tcodi (u: in Unbounded_String) return tcodi;
function to_tqualificacio(u: in Unbounded_String) return tqualificacio;
function to_tcategoria(u: in Unbounded_String) return tcategoria;

private

package dqueue is new queue(element => Unbounded_String);
use dqueue;

type tplat is record
    nom: Unbounded_String;
    categoria: tcategoria;
    coabona: coa;
    coamitja: coa;
    coadolent: coa;
end record;

type pplat is access tplat;

procedure imprimiritem(x: in pplat);

package dtrie is new trie(ranglletres, rangcodi, tcodi, pplat, imprimiritem);
use dtrie;

type carta is array(tcategoria) of conjunto;


end tcarta;
