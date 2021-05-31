<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,1202,800,1,140,0>
  <Grid=10,10,1>
  <DataSet=dc.dat>
  <DataDisplay=dc.dpl>
  <OpenDisplay=1>
  <Script=dc.m>
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
  <GND * 1 510 260 0 0 0 0>
  <R R1 1 400 260 -26 15 0 0 "1k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.TR TR1 1 400 410 0 65 0 0 "lin" 1 "0" 1 "50 ms" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <GND * 1 310 460 0 0 0 0>
  <Vdc V2 1 310 430 18 -26 0 1 "-2V" 1>
  <Vrect V1 1 310 340 18 -26 0 1 "2 V" 1 "6.25 ms" 1 "6.25 ms" 1 "6.25 ms" 0 "6.25 ms" 0 "0 ns" 0>
</Components>
<Wires>
  <430 260 510 260 "" 0 0 0 "">
  <310 370 310 400 "" 0 0 0 "">
  <310 260 370 260 "Vout" 350 230 7 "">
  <310 260 310 310 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 680 240 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"Vout.Vt" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
