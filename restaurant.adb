with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO;
use Ada.Strings.Unbounded.Text_IO;
with tcarta;
use tcarta;

procedure restaurant is

    c: carta;
    comentari: Unbounded_String;

    procedure simulacio is
    begin
        --MENÚ D'HIVERN
        Put_Line(" ");
        Put_Line(" ");
        Put_Line("--------------------------- CARTA D'HIVERN ---------------------------");
        Put_Line(" ");
        Put_Line(" ");

        Put_Line("1. INSERCIÓ DELS PLATS DE CADA CATEGORIA: ");
        Put_Line("Entrants: ");
        posarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_Unbounded_String("Pernil ibèric"));
        Put_Line("S'ha afegit el pernil ibèric");
        posarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAB")), to_Unbounded_String("Formatge de cabra"));
        Put_Line("S'ha afegit el formatge de cabra");
        posarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAC")), to_Unbounded_String("Gambes a la planxa"));
        Put_Line("S'han afegit les gambes a la planxa");
        posarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAD")), to_Unbounded_String("Musclos"));
        Put_Line("S'han afegit els musclos");
        posarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAE")), to_Unbounded_String("Olives"));
        Put_Line("S'han afegit les olives");
        Put_Line(" ");
        Put_Line("Primer: ");
        posarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_Unbounded_String("Macarrons"));
        Put_Line("S'han afegit els macarrons");
        posarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAG")), to_Unbounded_String("Paella"));
        Put_Line("S'ha afegit la paella");
        posarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAH")), to_Unbounded_String("Arròs de peix"));
        Put_Line("S'ha afegit l'arròs de peix");
        posarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAI")), to_Unbounded_String("Sopa de conill"));
        Put_Line("S'ha afegit la sopa de conill");
        posarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAJ")), to_Unbounded_String("Sopa de cabra"));
        Put_Line("S'ha afegit la sopa de cabra");
        Put_Line(" ");
        Put_Line("Segon: ");
        posarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAK")), to_Unbounded_String("Salmó a la planxa"));
        Put_Line("S'ha afegit el salmó a la planxa");
        posarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAL")), to_Unbounded_String("Calamar farcit"));
        Put_Line("S'ha afegit el calamar farcit");
        posarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAM")), to_Unbounded_String("Pollastre amb mel"));
        Put_Line("S'ha afegit el pollastre amb mel");
        posarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAN")), to_Unbounded_String("Escaldums"));
        Put_Line("S'han afegit els escaldums");
        posarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_Unbounded_String("Porcella"));
        Put_Line("S'ha afegit la porcella");
        Put_Line(" ");
        Put_Line("Postes: ");
        posarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAP")), to_Unbounded_String("Tocino de cielo"));
        Put_Line("S'ha afegit el tocino de cielo");
        posarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAQ")), to_Unbounded_String("Flam"));
        Put_Line("S'ha afegit el flam");
        posarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAR")), to_Unbounded_String("Iogurt"));
        Put_Line("S'ha afegit el iogurt");
        posarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_Unbounded_String("Fruita de temporada"));
        Put_Line("S'ha afegit la fruita de temporada");
        posarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAT")), to_Unbounded_String("Crepe"));
        Put_Line("S'ha afegit la crepe");
        Put_Line(" ");
        Put_Line("Begudes: ");
        posarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAU")), to_Unbounded_String("Vi rosat"));
        Put_Line("S'ha afegit el vi rosat");
        posarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAV")), to_Unbounded_String("Vi blanc"));
        Put_Line("S'ha afegit el vi blanc");
        posarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAW")), to_Unbounded_String("Vi tint"));
        Put_Line("S'ha afegit el vi tint");
        posarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAX")), to_Unbounded_String("Cervesa"));
        Put_Line("S'ha afegit la cervesa");
        posarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAY")), to_Unbounded_String("Xocolata calenta"));
        Put_Line("S'ha afegit la xocolata calenta");

          
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("El pernil era de molt bona qualitat"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("El pernil és millorable"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("He menjat coses millors"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAC")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("Les gambes eren de Sóller"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAC")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("Les gambes eren bones però fredes"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAC")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("Les gambes estaven caducades"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("Els macarrons són bons"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("Els macarrons eren insípids"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("Els macarrons eren secs"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAI")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("La sopa era extraodinaria"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAI")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("A la sopa li faltava sal"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAI")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("He trobat un ull de conill dins la sopa"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAM")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("El pollaste és exquisit"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAM")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("El pollastre tenia massa gust de mel"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAM")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("El pollastre era cru"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("La porcella era boníssima"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("La porcella era salada"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("La porcella era massa cuita"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAQ")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("El flam era deliciós"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAQ")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("El flam era bo però no és casolà"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAQ")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("El flam estava caducat"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("La fruita era de bona qualitat"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("La fruita no estava pelada"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("La fruita era massa madura"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAX")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("La cervesa era deliciosa"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAX")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("La cervesa era millorable"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAX")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("La cervesa era calenta"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAY")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("La xocolata era deliciosa"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAY")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("La xocolata era massa dolça"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAY")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("La xocolata era freda"));       

        Put_Line(" ");
        Put_Line(" ");
        Put_Line("2. IMPRESSIÓ DELS COMENTARIS INSERITS A UN PLAT DE CADA CATEGORIA: "); 
        Put_Line("Comentari de l'Entrant: "); 
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Bo")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari del Primer: "); 
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Mitja")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari del Segon: "); 
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Dolent")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari de les Postres: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Bo")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari de les begudes: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAY")), to_tqualificacio(to_Unbounded_String("Mitja")));
        Put_Line(comentari);

        
        eliminarcomentari (c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Bo")));
        eliminarcomentari (c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Mitja")));    
        eliminarcomentari (c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Dolent")));        
        eliminarcomentari (c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Bo")));       
        eliminarcomentari (c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAY")), to_tqualificacio(to_Unbounded_String("Mitja")));

        Put_Line(" ");
        Put_Line(" ");
        Put_Line("3. COMPROVACIÓ DE QUE ELS COMENTARIS S'HAN ELIMINAT CORRECTAMENT: ");
        Put_Line("Comentari de l'Entrant: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Bo")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari del Primer: "); 
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Mitja")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari del Segon: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Dolent")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari de les Postres: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Bo")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari de les begudes: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAY")), to_tqualificacio(to_Unbounded_String("Mitja")));
        Put_Line(comentari);

        Put_Line(" ");
        Put_Line(" ");
        Put_Line("4. IMPRESSIÓ DE LA CARTA D'HIVERN SEGONS LA CATEGORIA: ");
        Put_Line("ELEMENTS D'ENTRANT:");
        imprimirelements(c, to_tcategoria(to_Unbounded_String("Entrant")));
        Put_Line(" ");
        Put_Line("ELEMENTS DE PRIMER:");
        imprimirelements(c, to_tcategoria(to_Unbounded_String("Primer")));
        Put_Line(" ");
        Put_Line("ELEMENTS DE SEGON:");
        imprimirelements(c, to_tcategoria(to_Unbounded_String("Segon")));
        Put_Line(" ");
        Put_Line("ELEMENTS DE POSTRES:");
        imprimirelements(c, to_tcategoria(to_Unbounded_String("Postres")));
        Put_Line(" ");
        Put_Line("ELEMENTS DE BEGUDES:");
        imprimirelements(c, to_tcategoria(to_Unbounded_String("Begudes")));
       
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAB")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAC")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAD")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAE")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAG")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAH")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAI")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAJ")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAK")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAL")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAM")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAN")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAP")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAQ")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAR")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAT")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAU")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAV")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAW")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAX")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAY")));


        --MENÚ D'ESTIU
        Put_Line(" ");
        Put_Line(" ");
        Put_Line("--------------------------- CARTA D'ESTIU ---------------------------");
        Put_Line(" ");
        Put_Line(" ");

        Put_Line("1. INSERCIÓ DELS PLATS DE CADA CATEGORIA: ");
        Put_Line("Entrants: ");
        posarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_Unbounded_String("Trampó"));
        Put_Line("S'ha afegit el trampó");
        posarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAB")), to_Unbounded_String("Formatge maonès"));
        Put_Line("S'ha afegit el formatge maonès");
        posarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAC")), to_Unbounded_String("Pop a la gallega"));
        Put_Line("S'ha afegit el pop a la gallega");
        posarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAD")), to_Unbounded_String("Croquetes d'espinacs"));
        Put_Line("S'han afegit les croquetes d'espinacs");
        posarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAE")), to_Unbounded_String("Ensaladilla russa"));
        Put_Line("S'ha afegit l'ensaladilla russa");
        Put_Line(" ");
        Put_Line("Primer: ");
        posarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_Unbounded_String("Ensalada de pasta"));
        Put_Line("S'ha afegit l'ensalada de pasta");
        posarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAG")), to_Unbounded_String("Gaspatxo"));
        Put_Line("S'ha afegit el gaspatxo");
        posarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAH")), to_Unbounded_String("Arròs a la cubana"));
        Put_Line("S'ha afegit l'arròs a la cubana");
        posarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAI")), to_Unbounded_String("Puré"));
        Put_Line("S'ha afegit el puré");
        posarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAJ")), to_Unbounded_String("Sopes mallorquines"));
        Put_Line("S'han afegit les sopes mallorquines");
        Put_Line(" ");
        Put_Line("Segon: ");
        posarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAK")), to_Unbounded_String("Llampuga amb tumbet"));
        Put_Line("S'ha afegit la llampuga amb tumbet");
        posarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAL")), to_Unbounded_String("Gall amb ceba"));
        Put_Line("S'ha afegit el gall amb ceba");
        posarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAM")), to_Unbounded_String("Albergínies farcides"));
        Put_Line("S'han afegit les albergínes farcides");
        posarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAN")), to_Unbounded_String("Sípia a la planxa"));
        Put_Line("S'ha afegit la sípia a la planxa");
        posarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_Unbounded_String("Truita de patata"));
        Put_Line("S'ha afegit la truita de patata");
        Put_Line(" ");
        Put_Line("Postres: ");
        posarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAP")), to_Unbounded_String("Gelat"));
        Put_Line("S'ha afegit el gelat");
        posarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAQ")), to_Unbounded_String("Tiramisú"));
        Put_Line("S'ha afegit el tiramisú");
        posarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAR")), to_Unbounded_String("Síndria"));
        Put_Line("S'ha afegit la síndria");
        posarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_Unbounded_String("Brownie de xocolata"));
        Put_Line("S'ha afegit el brownie de xocolata");
        posarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAT")), to_Unbounded_String("Mousse de llimona"));
        Put_Line("S'ha afegit la mousse de llimona");
        Put_Line(" ");
        Put_Line("Begudes: ");
        posarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAU")), to_Unbounded_String("Cava"));
        Put_Line("S'ha afegit el cava");
        posarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAV")), to_Unbounded_String("Sangria"));
        Put_Line("S'ha afegit la sangria");
        posarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAW")), to_Unbounded_String("Gin amb llimonada"));
        Put_Line("S'ha afegit el gin amb llimonada");
        posarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAX")), to_Unbounded_String("Cervesa"));
        Put_Line("S'ha afegit la cervesa");
        posarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAY")), to_Unbounded_String("Vi blanc"));
        Put_Line("S'ha afegit el vi blanc");

        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("El trampó és molt bo"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("La presentació és millorable"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("El preu és massa elevat"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAC")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("El pop semblava cuinat a Galícia"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAC")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("El pop era bo però un poc dur"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAC")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("El pop era horrible"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("L'ensalada de pasta és bona"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("L'ensalada de pasta era insípida"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("La pasta era massa cuita"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAI")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("El puré era extraodinari"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAI")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("Al puré li faltava sal"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAI")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("Les verdures no estaven ben triturades"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAM")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("Les albergínies són exquisides"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAM")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("Les albergínies millorarien si portassin salsa de tomàtiga"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAM")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("Les albergínies eren salades"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("La truita era boníssima"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("La truita no portava ceba"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("La truita era crua"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAQ")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("El tiramisú era deliciós"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAQ")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("El tiramisú era bo però no és casolà"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAQ")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("El tiramisú estava caducat"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("El brownie era de bona qualitat"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("El brownie era massa dolç"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("El brownie era sec"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAX")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("La cervesa era deliciosa"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAX")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("La cervesa era millorable"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAX")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("La cervesa era calenta"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAW")), to_tqualificacio(to_Unbounded_String("Bo")), to_Unbounded_String("El gin amb llimonada era deliciós"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAW")), to_tqualificacio(to_Unbounded_String("Mitja")), to_Unbounded_String("El gin amb llimonada tenia massa gin"));
        posarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAW")), to_tqualificacio(to_Unbounded_String("Dolent")), to_Unbounded_String("El gin amb llimonada no portava Xoriguer")); 
        
        Put_Line(" ");
        Put_Line(" ");
        Put_Line("2. IMPRESSIÓ DELS COMENTARIS INSERITS A UN PLAT DE CADA CATEGORIA: "); 
        Put_Line("Comentari de l'Entrant: "); 
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Bo")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari del Primer: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Mitja")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari del Segon: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Dolent")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari de les Postres: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Bo")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari de les Begudes: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAW")), to_tqualificacio(to_Unbounded_String("Mitja")));
        Put_Line(comentari);

        eliminarcomentari (c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Bo")));
        eliminarcomentari (c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Mitja")));
        eliminarcomentari (c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Dolent")));
        eliminarcomentari (c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Bo")));
        eliminarcomentari (c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAW")), to_tqualificacio(to_Unbounded_String("Mitja")));

        Put_Line(" ");
        Put_Line(" ");
        Put_Line("3. COMPROVACIÓ DE QUE ELS COMENTARIS S'HAN ELIMINAT CORRECTAMENT: ");
        Put_Line("Comentari de l'Entrant: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")), to_tqualificacio(to_Unbounded_String("Bo")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari del Primer: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")), to_tqualificacio(to_Unbounded_String("Mitja")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari del Segon: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")), to_tqualificacio(to_Unbounded_String("Dolent")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari de les Postres: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")), to_tqualificacio(to_Unbounded_String("Bo")));
        Put_Line(comentari);
        Put_Line(" "); 
        Put_Line("Comentari de les Begudes: ");
        comentari := consultarcomentari(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAW")), to_tqualificacio(to_Unbounded_String("Mitja")));
        Put_Line(comentari);

        Put_Line(" ");
        Put_Line(" ");
        Put_Line("4. IMPRESSIÓ DE LA CARTA D'HIVERN SEGONS LA CATEGORIA: ");
        Put_Line("ELEMENTS D'ENTRANT:");
        imprimirelements(c, to_tcategoria(to_Unbounded_String("Entrant")));
        Put_Line(" ");
        Put_Line("ELEMENTS DE PRIMER:");
        imprimirelements(c, to_tcategoria(to_Unbounded_String("Primer")));
        Put_Line(" ");
        Put_Line("ELEMENTS DE SEGON:");
        imprimirelements(c, to_tcategoria(to_Unbounded_String("Segon")));
        Put_Line(" ");
        Put_Line("ELEMENTS DE POSTRES:");
        imprimirelements(c, to_tcategoria(to_Unbounded_String("Postres")));
        Put_Line(" ");
        Put_Line("ELEMENTS DE BEGUDES:");
        imprimirelements(c, to_tcategoria(to_Unbounded_String("Begudes")));

        eliminarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAA")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAB")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAC")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAD")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Entrant")), to_tcodi(to_Unbounded_String("AAE")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAF")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAG")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAH")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAI")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Primer")), to_tcodi(to_Unbounded_String("AAJ")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAK")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAL")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAM")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAN")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Segon")), to_tcodi(to_Unbounded_String("AAO")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAP")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAQ")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAR")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAS")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Postres")), to_tcodi(to_Unbounded_String("AAT")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAU")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAV")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAW")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAX")));
        eliminarelement(c, to_tcategoria(to_Unbounded_String("Begudes")), to_tcodi(to_Unbounded_String("AAY")));

    end simulacio;

begin
    cartabuida(c);
    Put_Line("RESTAURANT FERRERET");
    simulacio;
    exception
        when categoria_erronia => Put_Line("Has posat una categoria innexistent");
        when qualificacio_erronia => Put_Line("Has posat una qualificacio innexistent");
        when codi_erroni => Put_Line("Has posat un codi malament");
        when no_existeix => Put_Line("L'element posat no existeix");
        when no_comentari => Put_Line("El comentari no existeix");
end restaurant;
