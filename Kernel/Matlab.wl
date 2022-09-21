(* ::Package:: *)

BeginPackage["TheRealCStover`Matlab`"];

(* Declare your packages public symbols here. *)

FlipLR;
FlipUD;
Linspace;
Rot90;

Begin["`Private`"];

(* Define your public and private symbols here. *)

FlipLR[vect_?(VectorQ[#]&)]:=Reverse[vect];
FlipLR[mat_?(MatrixQ[#]&)]:=Reverse/@mat;

FlipUD[vect_?(VectorQ[#]&)]:=Reverse[vect];
FlipUD[mat_?(MatrixQ[#]&)]:=Reverse@mat;

(* TODO: This needs some conditions on the arguments. *)
Linspace[a_,b_,n_:100]:=N@Subdivide[a,b,n-1]

(* TODO: This needs the 2-arg form. *)
Rot90[vect_?(VectorQ[#]&)]:=List/@vect;
Rot90[mat_?(MatrixQ[#]&)]:=Reverse@Transpose[mat];

End[]; (* End `Private` *)

EndPackage[];
