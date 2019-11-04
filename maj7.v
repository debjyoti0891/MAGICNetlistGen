module maj7 (
v0 , v1 , v2 , v3 , v4 , v5 , v6 , majority );
input v0 , v1 , v2 , v3 , v4 , v5 , v6 ;
output majority;
wire cm0 , cm1 , cm2 , cm3 , cm4 , cm5 , cm6 , cm7 , cm8 , cm9 , cm10 , cm11 , cm12 , cm13 , cm14 , cm15 , cm16 , cm17 , cm18 , cm19 , cm20 , cm21 , cm22 , cm23 , cm24 , cm25 , cm26 , cm27  ;

assign cm1 = v1 & v2;
assign cm0 = v1 | v2;
assign cm3 = v0 & cm1;
assign cm2 = v0 | cm1;
assign cm5 = cm2 & cm0;
assign cm4 = cm2 | cm0;
assign cm7 = v3 & v4;
assign cm6 = v3 | v4;
assign cm8 = v5 & v6;
assign cm9 = v5 | v6;
assign cm10 = cm6 & cm8;
assign cm11 = cm6 | cm8;
assign cm12 = cm7 & cm9;
assign cm13 = cm7 | cm9;
assign cm14 = cm10 & cm12;
assign cm15 = cm10 | cm12;
assign cm16 = cm11 & cm13;
assign cm17 = cm11 | cm13;
assign cm18 = cm4 & cm15;
assign cm19 = cm4 | cm15;
assign cm20 = cm5 & cm16;
assign cm21 = cm5 | cm16;
assign cm22 = cm3 & cm17;
assign cm23 = cm3 | cm17;
assign cm24 = cm18 & cm22;
assign cm25 = cm18 | cm22;
assign cm26 = cm20 & cm14;
assign cm27 = cm20 | cm14;
assign majority = cm25 | cm27 ;
endmodule