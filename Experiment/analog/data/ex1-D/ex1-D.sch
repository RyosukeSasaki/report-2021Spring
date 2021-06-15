<Qucs Schematic 0.0.22>
<Properties>
  <View=236,117,1154,771,1.5,0,0>
  <Grid=10,10,1>
  <DataSet=ex-D.dat>
  <DataDisplay=ex-D.dpl>
  <OpenDisplay=1>
  <Script=ex-D.m>
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
  <GND * 1 600 510 0 0 0 0>
  <R R4 1 600 480 15 -26 0 1 "1.002 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.TR TR1 1 1020 590 0 65 0 0 "lin" 1 "0" 1 "2 ms" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <OpAmp OP1 1 700 330 -26 -80 1 0 "1e6" 1 "15 V" 0>
  <R R1 1 510 310 -26 -53 1 0 "333.1 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 510 350 -26 15 0 0 "333.7 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vac V1 1 290 430 18 -26 0 1 "0.25 V" 1 "5 kHz" 1 "0" 0 "0" 0>
  <GND * 1 290 480 0 0 0 0>
  <R R3 1 700 210 -26 -53 1 0 "0.997 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vrect V2 1 440 450 18 -26 0 1 "1 V" 1 "0.5 ms" 1 "0.5 ms" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0>
  <Vdc V_offset 1 440 530 18 -26 0 1 "-0.5 V" 1>
  <GND * 1 440 580 0 0 0 0>
  <GND * 1 950 360 0 0 0 0>
  <R R5 1 850 330 -26 15 0 0 "1 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <600 350 670 350 "" 0 0 0 "">
  <600 350 600 450 "" 0 0 0 "">
  <600 310 670 310 "" 0 0 0 "">
  <740 330 780 330 "" 0 0 0 "">
  <540 310 600 310 "" 0 0 0 "">
  <540 350 600 350 "" 0 0 0 "">
  <290 310 480 310 "" 0 0 0 "">
  <290 310 290 400 "Vin1" 330 340 15 "">
  <290 460 290 480 "" 0 0 0 "">
  <600 210 600 310 "" 0 0 0 "">
  <600 210 670 210 "" 0 0 0 "">
  <440 350 480 350 "" 0 0 0 "">
  <440 350 440 420 "Vin2" 390 380 13 "">
  <440 480 440 500 "" 0 0 0 "">
  <440 560 440 580 "" 0 0 0 "">
  <780 210 780 330 "" 0 0 0 "">
  <730 210 780 210 "" 0 0 0 "">
  <780 330 820 330 "Vout" 800 260 40 "">
  <880 330 950 330 "" 0 0 0 "">
  <950 330 950 360 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
