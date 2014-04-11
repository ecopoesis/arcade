include <MCAD/boxes.scad>
include <R-Pi/R-Pi.scad>

bamboo=6.7;
thick_acrylic=9.0;

//pi("B");

translate([-205.5,0,128.5])
rotate([0,75,0])
rotate([0,0,90]) 
color("grey")
screen();

translate([-10,0,85])
rotate([0,12.5,0])
rotate([0,0,90])
controls();

translate([-thick_acrylic-10,0,10])
rotate([0,90,0])
rotate([0,0,90])
front();

translate([0,-bamboo,0])
rotate([90,0,180])
side();

translate([0,280,0])
rotate([90,0,180])
side();

module screen() {
	cube([280, 250, thick_acrylic]);
}

module controls() {
	linear_extrude(height = thick_acrylic)
	import (file = "controls.dxf");	
}

module front() {
	cube([280, 75, thick_acrylic]);
}

module side() {
	linear_extrude(height = bamboo)
	import (file = "side.dxf");
}