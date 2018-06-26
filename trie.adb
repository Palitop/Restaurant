with Ada.Text_IO;
use Ada.Text_IO;

package body trie is
    mk: constant key_component:= key_component'first;
    lastc: constant key_component:= key_component'last;
    i0: constant key_index := key_index'first;

procedure cvacio(s: out conjunto) is
    raiz: pnodo renames s.raiz;
begin
    raiz:= new nodo (nodointermedio);
    raiz.node := (others => null);
end cvacio;

function existe(s: in conjunto; k: in key) return boolean is
    raiz: pnodo renames s.raiz;
    p: pnodo;
    i: key_index;
    c: key_component;
begin
    p:= raiz; i:= i0; c:= k(i);
    while c/=mk and p.node(c)/= null loop
        p:= p.node(c); i:= i+1; c:= k(i);
    end loop;
    return c=mk and p.node(mk)/= null;
end existe;

procedure poner(s: in out conjunto; k: in key; x: in item) is
    raiz: pnodo renames s.raiz;
    p: pnodo;
    r, e : pnodo;
    i: key_index;
    c: key_component;
    it: pitem;
begin
    p:= raiz; i:= i0; c:= k(i);
    while c/=mk loop
        if p.node(c)=null then
            r:= new nodo(nodointermedio);
            r.node:= (others => null);
            p.node(c):= r;
        end if ;
        p:= p.node(c); i:= i+1; c:= k(i);
    end loop;
    e:= new nodo(nodohoja);
    it := new item;
    it.all := x;
    e.item:= it;
    p.node(mk):= e;
exception
    when storage_error => raise espacio_desbordado;
end poner;

function unico_desc(p: in pnodo) return boolean is
    c: key_component;
    nd: integer; -- número de descendientes
begin
    c:= mk; nd:= 0;
    while c/=lastc and nd<2 loop
        if p.node(c)/= null then
            nd:= nd+1;
        end if;
        c:= key_component'succ(c);
    end loop;
    if p.node(c)/= null then
        nd:= nd+1;
    end if;
    return nd<2;
end unico_desc;

procedure borrar(s: in out conjunto; k: in key) is
    raiz: pnodo renames s.raiz;
    p, r: pnodo;
    i: key_index;
    c, cr: key_component;
begin
    p:= raiz; i:= i0; c:= k(i); r:= p; cr:= c;
    while c/=mk and p.node(c)/= null loop
        if not unico_desc(p) then
            r:= p; cr:= c;
        end if ;
        p:= p.node(c); i:= i+1; c:= k(i);
    end loop;
    if c=mk and p.node(mk) /= null then
        if unico_desc(p) then
            r.node(cr):= null;
        else p.node(mk):= null;
        end if ;
    end if ;
end borrar;

function get_item(s: in conjunto; k: in key) return item is
    raiz: pnodo renames s.raiz;
    p: pnodo;
    i: key_index;
    c: key_component;
begin
    p:= raiz; i:= i0; c:= k(i);
    while c/=mk and p.node(c)/= null loop
        p:= p.node(c); i:= i+1; c:= k(i);
    end loop;
    if c=mk and p.node(mk) /= null then
        return p.node(mk).item.all;
    else
        raise no_existeix;
    end if;
end get_item;

procedure firstbranch (p: in pnodo; c: out key_component; found: out boolean) is
begin
    c:= mk; found:= (p.node(c)/=null);
    while c < lastc and not found loop
        c:= key_component'succ(c);
        found:= (p.node(c)/=null);
    end loop;
end firstbranch;

procedure first(s: in conjunto; it: out iterator) is
    root: pnodo renames s.raiz;
    pth: path renames it.pth;
    k: key renames it.k;
    i: key_index renames it.i;
    c: key_component;
    p: pnodo;
    found: boolean;
begin
    p:= root; i:= i0;
    firstbranch(p, c, found); 
    while found and c/=mk loop
        pth(i):= p; k(i):= c; i:= i+1;
        p:= p.node(c);
        firstbranch(p, c, found);
    end loop;
    pth(i):= p; k(i):= mk;
end first;

procedure nextbranch(p: in pnodo; c: in out key_component; found: out boolean) is
begin
    found:= false;
    while c<lastc and not found loop
        c:= key_component'succ(c);
        found:= (p.node(c)/=null);
    end loop;
end nextbranch;

procedure next(s: in conjunto; it: in out iterator) is
    root: pnodo renames s.raiz;
    pth: path renames it.pth;
    k: key renames it.k;
    i: key_index renames it.i;
    c: key_component;
    p: pnodo;
    found: boolean;
begin
    if k(i0)=mk then raise bad_use; end if ;
    p:= pth(i); c:= k(i); 
    nextbranch(p, c, found);
    while not found and i>1 loop 
        i:= i-1; p:= pth(i); c:= k(i);
        nextbranch(p, c, found);
    end loop;
    while found and c/=mk loop 
        pth(i):= p; k(i):= c; i:= i+1;
        p:= p.node(c);
        firstbranch(p, c, found);
    end loop;
    pth(i):= p; k(i):= mk;
end next;

function is_valid(it: in iterator) return boolean is
    k: key renames it.k;
begin
    return k(i0)/=mk;
end is_valid;

procedure get(s: in conjunto; it: in iterator; k: out key; x: out item) is
begin
    if it.k(i0)=mk then raise bad_use; end if ;
    k:= it.k;
    x := it.pth(it.i).node(mk).item.all;
end get;

procedure traversal (s : in conjunto) is
    k : key;
    x : item;
    it : iterator;
begin
    first(s, it);
    while is_valid(it) loop
        get(s, it, k, x);
        visitar(x);
        next(s, it);
    end loop;
end traversal;

end trie;
