<Qucs Schematic 0.0.22>
<Properties>
  <View=-70,-31,1781,1168,1,268,302>
  <Grid=10,10,1>
  <DataSet=ex4-A-01.dat>
  <DataDisplay=ex4-A-01.dpl>
  <OpenDisplay=1>
  <Script=ex4-A-01.m>
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
  <R R2 1 0 0 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R3 1 0 0 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vdc V1 1 370 660 18 -26 0 1 "VDC" 1>
  <GND * 1 370 690 0 0 0 0>
  <GND * 1 730 690 0 0 0 0>
  <R R4 1 600 550 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.DC DC1 1 450 750 0 47 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Diode D1 1 480 550 -26 15 1 2 "10 uA" 1 "1" 1 "10 fF" 1 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <.SW SW1 1 450 860 0 51 0 0 "DC1" 1 "lin" 1 "VDC" 1 "0 V" 1 "0.5 V" 1 "1001" 1 "false" 0>
</Components>
<Wires>
  <370 550 450 550 "Vi" 430 520 31 "">
  <370 550 370 630 "" 0 0 0 "">
  <730 550 730 690 "" 0 0 0 "">
  <630 550 730 550 "" 0 0 0 "">
  <510 550 570 550 "Vo" 560 520 21 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
