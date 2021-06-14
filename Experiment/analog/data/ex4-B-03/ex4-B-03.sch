<Qucs Schematic 0.0.22>
<Properties>
  <View=0,-60,842,897,1,0,0>
  <Grid=10,10,1>
  <DataSet=ex4-B-03.dat>
  <DataDisplay=ex4-B-03.dpl>
  <OpenDisplay=1>
  <Script=ex4-B-03.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=タイトル>
  <FrameText1=作者:>
  <FrameText2=日付:>
  <FrameText3=リビジョン:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <OpAmp OP1 1 460 300 -26 -80 1 0 "1e6" 1 "15 V" 0>
  <GND * 1 410 430 0 0 0 0>
  <.DC DC1 1 500 470 0 47 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 500 550 0 51 0 0 "DC1" 1 "lin" 1 "VDC" 1 "-0.1 V" 1 "0.1 V" 1 "1001" 1 "false" 0>
  <R R3 1 460 180 -26 -53 1 0 "100k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Diode D1 1 280 280 -26 15 1 2 "10 uA" 1 "1" 1 "10 fF" 1 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <GND * 1 200 430 0 0 0 0>
  <Vdc V1 1 200 360 -73 -26 1 1 "VDC" 1>
  <GND * 1 820 430 0 0 0 0>
  <R R2 1 690 300 -26 15 0 0 "100 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vdc V2 1 580 300 -26 18 0 0 "-1 V" 1>
</Components>
<Wires>
  <310 280 400 280 "" 0 0 0 "">
  <500 300 520 300 "" 0 0 0 "">
  <400 180 400 280 "" 0 0 0 "">
  <400 180 430 180 "" 0 0 0 "">
  <520 180 520 300 "" 0 0 0 "">
  <490 180 520 180 "" 0 0 0 "">
  <400 280 430 280 "" 0 0 0 "">
  <410 320 430 320 "" 0 0 0 "">
  <410 320 410 430 "" 0 0 0 "">
  <200 390 200 430 "" 0 0 0 "">
  <200 280 250 280 "Vi" 200 240 20 "">
  <200 280 200 330 "" 0 0 0 "">
  <720 300 820 300 "" 0 0 0 "">
  <820 300 820 430 "" 0 0 0 "">
  <520 300 550 300 "" 0 0 0 "">
  <610 300 660 300 "Vo" 720 270 32 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
