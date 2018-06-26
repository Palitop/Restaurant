generic
    type key_component is (<>);
    type key_index is range <>;
    type key is array(key_index) of key_component;
    type item is private;
    with procedure visitar(x: in item);
    
package trie is
type conjunto is limited private;
type iterator is limited private;

bad_use: exception;
espacio_desbordado: exception;
no_existeix: exception;

procedure cvacio(s: out conjunto);
function existe(s: in conjunto; k: in key) return boolean;
procedure poner(s: in out conjunto; k: in key; x: in item);
procedure borrar(s: in out conjunto; k: in key);
function get_item(s: in conjunto; k: in key) return item;

procedure first (s: in conjunto; it: out iterator);
procedure next (s: in conjunto; it: in out iterator);
function is_valid (it: in iterator) return boolean;
procedure get (s: in conjunto; it: in iterator; k: out key; x: out item);
procedure traversal (s : in conjunto);

private
    type pitem is access item;
    type nodo;
    type pnodo is access nodo;
    type nodotrie is array(key_component) of pnodo;
    type tnodo is (nodointermedio, nodohoja);
    type nodo (t: tnodo) is record
        case t is
            when nodointermedio =>
                node: nodotrie;
            when nodohoja =>
                item: pitem;
        end case;
    end record;
    type conjunto is record
        raiz: pnodo;
    end record;

    type path is array (key_index) of pnodo;
    type iterator is record
        pth : path;
        k : key;
        i : key_index;
    end record;
end trie;
