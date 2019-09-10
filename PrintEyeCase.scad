// Printeye Case
$fn=90; // or fugly

pcbx=53.5; // taken from the pcb as made
pcby=31.5; // not from the model

edgeRad=2;  // round off

fitting = !true;

if(!fitting) {
    casebody();
    translate([0,-50,33]) rotate([0,180,0])
    casestand();
} else {
    translate([-pcbx/2,pcby/2,17])
    rotate([180,0,0])
    pcb();
    casebody();
    casestand();
}

module casestand() {
    // Four tabs to grip onto case, wider at base
    translate([0,0,17.5])
    linear_extrude(height=2,convexity=8) {
        difference() {
            union() {
                square([pcbx+1,16],center=true);
                square([30,pcby+0.8],center=true);
            }
            square([pcbx-3.2,pcby-3.4],center=true);
        }
    }
    // Thinner upper part of tabs
    translate([0,0,19.5])
    linear_extrude(height=12,convexity=8) {
        difference() {
            union() {
                square([pcbx+0.8,16],center=true);
                square([30,pcby+0.6],center=true);
            }
            square([pcbx-3.2,pcby-3.4],center=true);
        }
    }
    //Plate over the whole thing with cutouts.
    // color("grey",0.5) // handy 4 debug
    translate([0,0,30])
    linear_extrude(height=3,convexity=8) {
        difference() {
            minkowski() {
                square([pcbx-3.2,pcby-3.4],center=true);
                circle(2);
            }
            translate([-16,0]) circle(d=13); // button
            
            hull() { // air/inspect/prodding hole
                translate([0,-3])
                scale([0.5,1]) circle(d=19); 
                translate([18,-3])
                scale([0.5,1]) circle(d=19); 
            }
            minkowski() { // cable slot)
                translate([-2,10.8])
                square([16,2.8]);
                circle(0.4);
            }
        }
        translate([0,-18])
        square([46,5],center=true);
    }
    // foot
    translate([0,-20.5,31]) 
    hull() {
        rotate([0,90,0])
        cylinder(d=4,h=46,center=true);
        translate([0,-7,-12])
        rotate([0,90,0])
        cylinder(d=3,h=42,center=true);
    }
    
    // Button recess
    translate([-16,0,24])
    linear_extrude(height=9,convexity=8) {
        difference() {
            circle(d=16);
            circle(d=13);
        }
    }
    translate([-16,0,24])
    linear_extrude(height=1,convexity=8) {
        intersection() {
            circle(d=16);
            square([3.2,18],center=true);
        }
    }
}

module casebody() {
    difference() {
        minkowski() {
            translate([0,0,15])
            cube([pcbx+1,pcby+1,30-2*edgeRad],center=true);
            sphere(edgeRad);
        }
        // lenses
        hull() {
            translate([0,-1.6,0])
            cube([52,15.6,0.1],center=true);
            translate([0,-1.6,1])
            cube([50,13.6,0.1],center=true);
        }
        // pcbs
        // Section with fat pins to support oleds
        translate([0,0,1])
        linear_extrude(height=2,convexity=8) {
            difference() {
                square([51.2,27.8],center=true);
                for(x=[-23.5,-1.5,1.5,23.5],
                    y=[-12,12])
                translate([x,y]) circle(2.8);
            }
        }
        // Now the bit with the pin tops
        translate([0,0,2.8])
        linear_extrude(height=30,convexity=8) {
            difference() {
                square([51.2,27.8],center=true);
                for(x=[-23,-2,2,23],
                    y=[-11.5,11.5])
                translate([x,y]) circle(1);
            }
        }
        // Now the rest
        translate([0,0,4])
        linear_extrude(height=30,convexity=8) {
            square([51.2,27.8],center=true);
        }
        
        translate([0,0,15.5])
        linear_extrude(height=60,convexity=8) {
            square([pcbx+1,pcby+0.8],center=true);
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
        translate([2,0,1.3])
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