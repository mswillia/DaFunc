/*
cube([51.6,26.5,(26.7+4)/2]);
color("red")cube([26.7,26,5]);
translate([0,0,5]) color("blue") cube([18,26,4]);
translate([0,0,9]) color("blue") cube([15,20,4]);
*/
/*
difference() {
translate([0,0,-.75]) cube([51.6+3,26.5+3,(26.7+4)+1.5],center=true);
cube([51.6,26.5,(26.7+4)],center=true);
}

*/

w=3;

module top() {
rotate([180,0,0])
difference() {
union() {
difference() {
cube([102+w/2,28+w,20+w],center=true);//Shell


translate([-51+3*w/4,0,0]) {

translate([0,-14,0]) cube([w/2,4*w/7,20],center=true);
translate([0,14,0]) cube([w/2,4*w/7,20],center=true);
}
translate([w/2,0,0])cube([102,28,20],center=true);//inner cutout



translate([-32.8+5,0,19/2]) cube([13,24,5],center=true); //OLED

translate([-51,0,.5])cube([10,22,12],center=true);//ICD Port

translate([51-w/4,0,0]) {
doora();
}
}
translate([0,-14+w,0]) cube([w/3,2*w,20],center=true);
translate([0,14-w,0]) cube([w/3,2*w,20],center=true);
}
translate([0,0,-10.5])cube([110,35,10],center=true);
}
}

module bottom() {
rotate([180,0,0])
difference() {
union() {
difference() {
cube([102+w/2,28+w,20+w],center=true);//Shell

translate([w/2,0,0])cube([102,28,20],center=true);//inner cutout



translate([-32.8+5,0,19/2]) cube([13,24,5],center=true); //OLED

translate([-51,0,.5])cube([10,22,12],center=true);//ICD Port


translate([0,0,4.5])cube([110,35,20],center=true);
}
translate([51-w/4,0,0]) {
doorb();
}
translate([-51+3*w/4,0,-6]) {

translate([0,-14+w-(4*w/14),0]) cube([w/3,2*w,10],center=true);
translate([0,14-w+(4*w/14),0]) cube([w/3,2*w,10],center=true);
}

translate([-w/2,-14+w,-6.5]) cube([w/2,2*w,7],center=true);
translate([-w/2,14-w,-6.5]) cube([w/2,2*w,7],center=true);

translate([w/2,-14+w,-6.5]) cube([w/2,2*w,7],center=true);
translate([w/2,14-w,-6.5]) cube([w/2,2*w,7],center=true);
}
}
}


module doora() {
translate([w/8,0,0])cube([3*w/4,28,20],center=true);
translate([0,-14,0]) cube([w/2,4*w/7,20],center=true);
translate([0,14,0]) cube([w/2,4*w/7,20],center=true);
}

module doorb() {
translate([w/6,0,0])cube([2*w/3,28,20],center=true);
translate([0,-14,0]) cube([w/3,4*w/7,20],center=true);
translate([0,14,0]) cube([w/3,4*w/7,20],center=true);
}


top();
translate([0,40,0])rotate([180,0,0]) bottom();
//translate([0,0,3]) bottom();
//Extend top above LCD 10.5mm
//Internal height 20mm
//			  width  27.8mm