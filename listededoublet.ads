package listeDeDoublet is

	-- Définitions liées au doublet

	type T_Coord is record
		X : float;
		Y : float;
		Z : float;
	end record;

	type T_Triangle is record
		Coord_1 : T_Coord;
		Coord_2 : T_Coord;
		Coord_3 : T_Coord;
	end record;

	type Doublet;

	type AdDoublet is access Doublet ;

	type Doublet is record
		Triangle : T_Triangle ; 
		Suc : AdDoublet ; -- pointeur sur un autre Doublet
	end record;

	--Définitions liées à la manipulation des triangles et coordonnées
	

	function cle ( triangle : in T_Triangle ) return float;

	function creer_coord ( x : in float; y : in float; z : in float )  return T_Coord; 

	function creer_triangle  ( s1  : in T_Coord; s2 : in T_Coord; s3 : in T_Coord ) return T_Triangle ;

	-- Définitions liées au liste

	procedure ajouter_en_tete_de_liste ( liste : in out AdDoublet ; valeur : in T_Triangle ) ;

	procedure free ( l : in AdDoublet);

	function est_vide ( liste : in AdDoublet ) return boolean;

	procedure Put_liste ( liste : in AdDoublet );

	procedure tri_paquet ( l : in out AdDoublet; NbCoord : in integer); 

end listeDeDoublet;
