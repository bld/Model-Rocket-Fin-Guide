// Rocket fin guide
// Print 2 plates and 2 adapters that fit in the body tube / engine mount

plateod=100; // plate outer diameter - 100mm to fit on my Mosaic
plateh=5; // plate height
nfins=3; // number of fins
fint=2.8; // fin thickness
stript=4.5; // thickness of strips used to clamp fins
screwd=3; // diameter of screw to attach tube adapter (M3)
screwheadd=5.5; // screw head diameter (M3)
rodslotw=6.5; // width of slot for rod (fits 1/4" threaded rod)
rodslotoffset=5; // Offset of rod slot from outer edge and central screw hole
finslotl=30; // Length of fin slot
finslotw=fint+2*stript; // Width of fin slot - calculated from fin thickness & strip thickness

// Fin slot blister parameters
finsloth=15; // Height of fin slot blister
finslotbasew=20+finslotw; // Width of fin slot blister base
finslottopw=5+finslotw; // Width of top of fin slot bister
finslotoffset=3; // Displacement of fin slot blister in from outer edge


//tubeid=38; // Body tube inner diameter (for 38mm body tube)
tubeid=28.5; // Body tube inner diameter (for 29mm engine mount)
adapterh=20; // Height of body tube adapter
adaptert=2; // Adapter thickness

// Body tube / engine mount adapter
module adapter()
	difference(){
		cylinder(r=tubeid/2,h=adapterh);
		translate([0,0,adaptert]) cylinder(r=tubeid/2-adaptert,h=adapterh);
		translate([0,0,-1]) cylinder(r=screwd/2,h=adaptert+2,$fn=12);
	}


module finslotblister()
translate([0,plateod/2-finslotoffset,0])
rotate([90,0,0])
linear_extrude(height=finslotl)
	polygon([
		[-finslotbasew/2,0],[finslotbasew/2,0],
		[finslottopw/2,finsloth],
		[-finslottopw/2,finsloth]]);

module plate()
difference(){
	union(){
		// Plate
		cylinder(r=plateod/2,h=plateh);
		// Blisters for fin slots
		for(i=[0:nfins-1])
			rotate([0,0,i*360/nfins])
				translate([0,0,plateh-.1]) finslotblister();
	}
	// Screw hole for body tube adapter
	translate([0,0,-1]) cylinder(r=screwd/2,h=plateh+2,$fn=12);
	for(i=[0:nfins-1])
		rotate([0,0,i*(360/nfins)-30]) translate([plateod/2-finslotl,-finslotw/2,-1]) cube([2*finslotl,finslotw,plateh+finsloth+2]);
	rotate([0,0,360/nfins/2-30]) translate([screwheadd/2+rodslotoffset,-rodslotw/2,-1]) cube([plateod/2-screwheadd/2-2*rodslotoffset,rodslotw,plateh+2]);
}

plate();
//adapter();
