// Printeye Case
$fn=90; // or fugly

pcbx=52.1;  // Dimensions of the stl file
pcby=30.55; // Obtained by loading it in Slicr

edgeRad=2;  // round off

fitting = !true;

if(!fitting) {
    caseFront();
} else {
    translate([-pcbx/2,pcby/2,17])
    rotate([180,0,0])
    pcb();
    caseFront();
}

module caseFront() {
    difference() {
        minkowski() {
            translate([0,0,15])
            cube([pcbx+1,pcby+1,30-2*edgeRad],center=true);
            sphere(edgeRad);
        }
        // lenses
        translate([0,-1.6,1])
        cube([49.8,13.5,2],center=true);
        // pcbs
        // Section with fat pins to support oleds
        translate([0,0,1])
        linear_extrude(height=2,convexity=8) {
            difference() {
                square([50.2,27.2],center=true);
                for(x=[-23,-2,2,23],
                    y=[-11.5,11.5])
                translate([x,y]) circle(3);
            }
        }
        // Now the bit with the pin tops
        translate([0,0,2.8])
        linear_extrude(height=30,convexity=8) {
            difference() {
                square([50.2,27.2],center=true);
                for(x=[-23,-2,2,23],
                    y=[-11.5,11.5])
                translate([x,y]) circle(1);
            }
        }
        // Now the rest
        translate([0,0,4])
        linear_extrude(height=30,convexity=8) {
            square([50.2,27.2],center=true);
        }
        
        translate([0,0,15.5])
        linear_extrude(height=60,convexity=8) {
            square([pcbx+0.3,pcby+0.4],center=true);
        }
    }
}

module pcb(opacity=0.5) {
    color("green",opacity)
    import("PrintEyePcb.stl");
    translate([13.6,15.3,13.3])
    rotate([0,0,90]) 
    oled(alpha=opacity);
    translate([38.5,15.3,13.3])
    rotate([0,0,90]) 
    oled(alpha=opacity);
}

module oled(alpha=0.5) {
    color("blue",alpha)
    linear_extrude(height=1.2,convexity=5) 
    difference() {
        square([27,25],center=true);
        for(x=[-11.5,11.5],y=[-10.5,10.5])
           translate([x,y]) circle(1.5);
    }
    color("grey",alpha) {
        translate([0,0,1.3])
        linear_extrude(height=1.4,convexity=5)
        square([16.6,24.8],center=true);
        translate([-10,0,1.3])
        linear_extrude(height=0.8,convexity=5)
        square([7,12],center=true);
        translate([1.6,0,1.3])
        linear_extrude(height=1.8,convexity=5)
        square([13.5,24.8],center=true);
    }
    
    for(y=[-3.81,-1.27,1.27,3.81]) {
        color("gold",alpha)
        translate([12,y,-11.7])
        linear_extrude(height=13.7,convexity=5)
        square([0.6,0.6],center=true);
        color("grey",0.8)
        translate([12,y,-11.7])
        linear_extrude(height=11.7,convexity=5)
        square([2,2.6],center=true);
    }
} 