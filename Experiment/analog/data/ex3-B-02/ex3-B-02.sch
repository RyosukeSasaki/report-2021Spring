<Qucs Schematic 0.0.22>
<Properties>
  <View=6,167,1746,1192,1,0,0>
  <Grid=10,10,1>
  <DataSet=ex3-B-02.dat>
  <DataDisplay=ex3-B-02.dpl>
  <OpenDisplay=1>
  <Script=ex3-B-02.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <OpAmp OP1 1 440 590 -26 -80 1 0 "1e6" 1 "15 V" 0>
  <GND * 1 350 780 0 0 0 0>
  <C C1 1 400 320 -26 17 0 0 "0.103 uF" 1 "" 0 "neutral" 0>
  <R R2 1 400 440 -26 15 0 0 "2.005 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R1 1 200 570 -26 15 0 0 "2.036 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 1280 660 0 0 0 0>
  <R R5 1 1110 610 -26 15 0 0 "100 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <OpAmp OP2 1 880 610 -26 -80 1 0 "1e6" 1 "15 V" 0>
  <GND * 1 790 800 0 0 0 0>
  <Eqn Eqn1 1 1490 400 -34 16 0 0 "Vi_pp=max(Vi.Vt)-min(Vi.Vt)" 1 "yes" 0>
  <Eqn Eqn2 1 1490 520 -34 16 0 0 "Vo_pp=max(Vo.Vt)-min(Vo.Vt)" 1 "yes" 0>
  <Eqn Eqn3 1 1490 650 -34 16 0 0 "Ti_p=xvalue(Vi.Vt,max(Vi.Vt))" 1 "yes" 0>
  <Eqn Eqn4 1 1490 770 -34 16 0 0 "To_p=xvalue(Vo.Vt,max(Vo.Vt))" 1 "yes" 0>
  <R R3 1 640 590 -26 15 0 0 "2.011 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R4 1 840 460 -26 15 0 0 "1.997 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C2 1 840 340 -26 17 0 0 "0.099 uF" 1 "" 0 "neutral" 0>
  <.TR TR1 1 390 890 0 66 0 0 "lin" 1 "0.10" 1 "0.1001" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vac V1 1 100 710 18 -26 0 1 "0.5 V" 1 "10000" 1 "0" 0 "0" 0>
  <GND * 1 100 790 0 0 0 0>
</Components>
<Wires>
  <350 700 350 780 "" 0 0 0 "">
  <350 700 410 700 "" 0 0 0 "">
  <410 610 410 700 "" 0 0 0 "">
  <320 320 370 320 "" 0 0 0 "">
  <320 570 410 570 "" 0 0 0 "">
  <320 320 320 440 "" 0 0 0 "">
  <320 440 320 570 "" 0 0 0 "">
  <320 440 370 440 "" 0 0 0 "">
  <430 440 530 440 "" 0 0 0 "">
  <430 320 530 320 "" 0 0 0 "">
  <530 320 530 440 "" 0 0 0 "">
  <230 570 320 570 "" 0 0 0 "">
  <480 590 530 590 "" 0 0 0 "">
  <530 590 610 590 "" 0 0 0 "">
  <530 440 530 590 "" 0 0 0 "">
  <1280 610 1280 660 "" 0 0 0 "">
  <1140 610 1280 610 "" 0 0 0 "">
  <790 720 790 800 "" 0 0 0 "">
  <790 720 850 720 "" 0 0 0 "">
  <850 630 850 720 "" 0 0 0 "">
  <760 340 810 340 "" 0 0 0 "">
  <670 590 760 590 "" 0 0 0 "">
  <760 590 850 590 "" 0 0 0 "">
  <760 340 760 460 "" 0 0 0 "">
  <760 460 760 590 "" 0 0 0 "">
  <760 460 810 460 "" 0 0 0 "">
  <870 460 970 460 "" 0 0 0 "">
  <870 340 970 340 "" 0 0 0 "">
  <970 340 970 460 "" 0 0 0 "">
  <920 610 970 610 "" 0 0 0 "">
  <970 610 1080 610 "Vo" 1040 580 39 "">
  <970 460 970 610 "" 0 0 0 "">
  <100 570 170 570 "" 0 0 0 "">
  <100 570 100 680 "Vi" 130 560 21 "">
  <100 740 100 790 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
