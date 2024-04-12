title 'Iris Data';
ods graphics on;
libname results '/mnt/artifacts/results';
proc cluster data = sashelp.iris method = twostage print = 10
outtree = results.tree k = 8 noeigen;
var SepalLength SepalWidth PetalLength PetalWidth;
   copy Species;
run;
proc tree data = results.tree horizontal lineprinter pages = 1 maxh = 10;
   id species;
run;