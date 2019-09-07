// Printeye Case
$fn=90; // or fugly

fitting = !true;

if(fitting) rotate([-45,0,0]) pcb();
    else pcb();
    

module pcb() {
    color("green",0.8)
    import("PrintEyePcb.stl");
    translate([13.5,15.3,13.3])
    rotate([0,0,90]) 
    oled();
    translate([38.5,15.3,13.3])
    rotate([0,0,90]) 
    oled();
}

module oled() {
    color("blue",0.8)
    linear_extrude(height=1.2,convexity=5) 
    difference() {
        square([27,25],center=true);
        for(x=[-11.5,11.5],y=[-10.5,10.5])
           translate([x,y]) circle(1.5);
    }
    color("grey",0.8) {
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
        color("gold",0.8)
        translate([12,y,-11.7])
        linear_extrude(height=13.7,convexity=5)
        square([0.6,0.6],center=true);
        color("grey",0.8)
        translate([12,y,-11.7])
        linear_extrude(height=11.7,convexity=5)
        square([2,2.6],center=true);
    }
} 