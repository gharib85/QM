(* ::Package:: *)

(* Abort for old, unsupported versions of Mathematica *)
If[$VersionNumber < 10,
  Print["QGates requires Mathematica 10.0 or later."];
  Abort[]
];

BeginPackage["QM`QGates`", {"MaTeX`"}];

(* Unprotect all package symbols *)
Unprotect @@ Names["QM`QGates`*"];
ClearAll @@ Names["QM`QGates`*"];


Toffoli


(* Protect all package symbols *)
With[{syms = Names["QM`QGates`*"]},
  SetAttributes[syms, {Protected, ReadProtected}]
];

(* Unprotect changeable Symbols *)
Unprotect[$iQStateAutoNormalize, $iQStatePrettyPrint, $iQStatePrettyPrintMagnification];

End[];
EndPackage[];