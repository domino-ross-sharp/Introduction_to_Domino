DATA input(drop=i);
  DO i = 1 to 1000;
    x = RAND('NORMAL', 0.0, 20.0);
    y = RAND('EXPONENTIAL');
  end;
run;

PROC UNIVARIATE DATA=input;
  HISTOGRAM;
RUN;
