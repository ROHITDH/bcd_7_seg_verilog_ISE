`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:56 09/03/2020 
// Design Name: 
// Module Name:    bcd_7_seg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bcd_7_seg(a,b,c,d,
y0,y1,y2,y3,y4,y5,y6);

output y0,y1,y2,y3,y4,y5,y6;
input a,b,c,d;


wire a_,b_,c_,d_,
a1_,b1_,c1_,d1_,e1_,f1_,g1_,h1_,i1_,j1_;

not(a_,a);
not(b_,b);
not(c_,c);
not(d_,d);

and(a1_,a_,b_,c_,d_);
and(b1_,a_,b_,c_,d);
and(c1_,a_,b_,c,d_);
and(d1_,a_,b_,c,d);
and(e1_,a_,b,c_,d_);

and(f1_,a_,b,c_,d);
and(g1_,a_,b,c,d_);
and(h1_,a_,b,c,d);
and(i1_,a,b_,c_,d_);
and(j1_,a,b_,c_,d);

or(y0,a1_,c1_,d1_,f1_,g1_,h1_,i1_,j1_);
or(y1,a1_,b1_,c1_,d1_,e1_,h1_,i1_,j1_);
or(y2,a1_,b1_,d1_,e1_,f1_,g1_,h1_,i1_,j1_);
or(y3,a1_,c1_,d1_,f1_,g1_,i1_,j1_);
or(y4,a1_,c1_,g1_,i1_);
or(y5,a1_,e1_,f1_,g1_,i1_,j1_);
or(y6,c1_,d1_,e1_,f1_,h1_,i1_,j1_);



endmodule
