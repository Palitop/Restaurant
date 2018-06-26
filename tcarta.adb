with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Strings.Unbounded.Text_IO;
use Ada.Strings.Unbounded.Text_IO;
with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

package body tcarta is

procedure cartabuida (c: out carta) is
begin
    for i in tcategoria'Range loop
        cvacio(c(i));
    end loop;
end cartabuida;

procedure posarelement (c: in out carta; cat : in tcategoria; k: in tcodi; nom : in Unbounded_String) is
    plat: pplat;
begin
    if not existe(c(cat), k) then
        plat := new tplat;
        plat.all.nom := nom;
        plat.all.categoria := cat;
        poner(c(cat), k, plat);
    else
        raise ja_existeix;
    end if;
end posarelement;

procedure eliminarelement (c: in out carta; cat: in tcategoria; k: in tcodi) is
    plat: pplat;
begin
    if existe(c(cat), k) then
        plat := new tplat;
        plat := get_item(c(cat), k);
        buidar(plat.all.coamitja);
        buidar(plat.all.coabona);
        buidar(plat.all.coadolent);
        borrar(c(cat), k);
    else
        raise no_existeix;
    end if;
end eliminarelement;

procedure posarcomentari (c: in out carta; cat: in tcategoria; k: in tcodi; q: in tqualificacio; comentari: in Unbounded_String) is
    plat : pplat;
begin
    plat := new tplat;
    plat := get_item(c(cat), k);
    case q is
        when Bo => posar (plat.all.coabona, comentari);
        when Mitja => posar (plat.all.coamitja, comentari);
        when Dolent => posar (plat.all.coadolent, comentari);
    end case;
end posarcomentari;

function consultarcomentari (c: in carta; cat: in tcategoria; k: in tcodi; q: in tqualificacio) return Unbounded_String is
    plat : pplat;
    comentari : Unbounded_String;
begin
    if existe(c(cat), k) then
        plat := new tplat;
        plat := get_item(c(cat), k);
        case q is
            when Bo =>      if not esbuida(plat.all.coabona) then
                                comentari := agafar_primer(plat.all.coabona);
                            else
                                comentari := to_unbounded_string("No existeix comentari");
                            end if;
            when Mitja =>   if not esbuida(plat.all.coamitja) then
                                comentari := agafar_primer(plat.all.coamitja);
                            else
                                comentari := to_unbounded_string("No existeix comentari");
                            end if;
            when Dolent =>  if not esbuida(plat.all.coadolent) then
                                comentari := agafar_primer(plat.all.coadolent);
                            else
                                comentari := to_unbounded_string("No existeix comentari");
                            end if;
        end case;
        return comentari;
    else
        raise no_existeix;
    end if;
end consultarcomentari;

function existeixcomentari (c: in carta; cat: in tcategoria; k: in tcodi; q: in tqualificacio) return Boolean is
    existeix : boolean;
    plat : pplat;
begin
    if existe(c(cat), k) then
        plat := new tplat;
        plat := get_item(c(cat), k);
        case q is
            when Bo => existeix := esbuida(plat.all.coabona);
            when Mitja => existeix := esbuida(plat.all.coamitja);
            when Dolent => existeix := esbuida(plat.all.coadolent);
        end case;
        return existeix;
    else
        raise no_existeix;
    end if;
end existeixcomentari;

procedure eliminarcomentari (c: in out carta; cat: in tcategoria; k: in tcodi; cal: in tqualificacio) is
    plat : pplat;
begin
    if existe(c(cat), k) then
        plat := new tplat;
        plat := get_item(c(cat), k);
        case cal is
            when Bo => borrar_primer(plat.all.coabona);
            when Mitja => borrar_primer(plat.all.coamitja);
            when Dolent => borrar_primer(plat.all.coadolent);
        end case;
    else
        raise no_existeix;
    end if;
end eliminarcomentari;

function to_tcategoria(u: in Unbounded_String) return tcategoria is
        categoria: tcategoria;
    begin
        categoria := tcategoria'Value(To_String(u));
        return categoria;
        exception
            when constraint_error => raise categoria_erronia;
    end to_tcategoria;

    function to_tqualificacio(u: in Unbounded_String) return tqualificacio is
        qualificacio: tqualificacio;
    begin
        qualificacio := tqualificacio'Value(To_String(u));
        return qualificacio;
        exception
            when constraint_error => raise qualificacio_erronia;
    end to_tqualificacio;

    function to_text (c: in tcategoria) return Unbounded_String is
        categoria: Unbounded_String;
    begin
        case (c) is
            when Entrant => categoria := to_unbounded_string("Entrant");
            when Primer => categoria := to_unbounded_string("Primer");
            when Segon => categoria := to_unbounded_string("Segon");
            when Postres => categoria := to_unbounded_string("Postres");
            when Begudes => categoria := to_unbounded_string("Begudes");
            when others => raise categoria_erronia;
        end case;
        return categoria;
    end to_text;

    function to_tcodi (u: in Unbounded_String) return tcodi is
        codi: tcodi;
        s: String (1..3);
    begin
        s := To_String(u);
        for i in 1..3 loop
            if s(i) in '@'..'Z' then  --miram si el caràcter esta dins el rang adequat
                codi(i) := s(i);
            else
                raise codi_erroni;
            end if;
        end loop;
        codi(4) := '@'; --afegim el caracter final
        return codi;
    end to_tcodi;

    procedure imprimiritem (x: in pplat) is
        comentari: Unbounded_String;
    begin
        Put("El nom del plat és: ");
        Put_Line (to_String(x.all.nom));
        Put("La categoria a la que pertany és: ");
        Put_Line(to_text(x.all.categoria));
        if not esbuida(x.all.coabona) then
            comentari := agafar_primer(x.all.coabona);
            Put_Line("El comentari bo és: " & to_String(comentari));
        else
            Put_Line("No existeix cap comentari bo");
        end if;
        if not esbuida(x.all.coamitja) then
            comentari := agafar_primer(x.all.coamitja);
            Put_Line("El comentari mitjà és: " & to_String(comentari));
        else
            Put_Line("No existeix cap comentari mitjà");
        end if;
        if not esbuida(x.all.coadolent) then
            comentari := agafar_primer(x.all.coadolent);
            Put_Line("El comentari dolent és: " & to_String(comentari));
        else
            Put_Line("No existeix cap comentari dolent");
        end if;
        Put_Line(" ");
    end imprimiritem;

    procedure imprimirelements (c: in carta; cat: in tcategoria) is
    begin
        --Falta tractament d'errors
        traversal(c(cat));
    end imprimirelements;

end tcarta;
