$fn = 100;

module fence (d, h) {
    intersection() {
        cube([d, 100, h], center=true);
        union() {
            for( x = [-h:d / sqrt(32) + h / sqrt(32)]) {
                translate([sqrt(32) * x, 1.5, 0]) {
                    rotate([0, 45, 0])
                        cube([2, 2, 2 * h], center = true);
                }
                translate([sqrt(32) * x, -1.5, 0]) {
                    rotate([0, -45, 0])
                        cube([2, 2, 2 * h], center = true);
                }
            }
            intersection() {
                for( x = [-h:d / sqrt(32) + h / sqrt(32)]) {
                    translate([sqrt(32) * x, .5, 0]) {
                        rotate([0, 45, 0]) {
                            cube([2, 2, 2 * h], center = true);
                        }
                    }
                }
                for( x = [-h:d / sqrt(32) + h / sqrt(32)]) {
                    translate([sqrt(32) * x, -.5, 0]) {
                        rotate([0, -45, 0]) {
                            cube([2, 2, 2 * h], center = true);
                        }
                    }
                }
            }
        }
    }
}

module platina () {
    difference() {
        translate([0, 0, -1.6]) {
            color(c = [0.3, 0.5, 0.3, 1])
                cube([25.4 * 7.2, 25.4 * 4.95, 1.6]);
        }
        translate([25.4 * .165, 25.4 * .165, 0]) {
            // outer
            cylinder(h = 30, r = 1.375, center = true);
            translate([25.4 * 6.503, 25.4 * 0, 0]) {
                cylinder(h = 30, r = 1.375, center = true);
           }
            translate([25.4 * 0, 25.4 * 4.620, 0]) {
                cylinder(h = 30, r = 1.375, center = true);
            }
            translate([25.4 * 6.672, 25.4 * 4.535, 0]) {
                cylinder(h = 30, r = 1.375, center = true);
            }
            // inner
            translate([25.4 * 1.224, 25.4 * 0, 0]) {
                cylinder(h = 30, r = 1.375, center = true);
            }
            translate([25.4 * 3.159, 25.4 * 0.940, 0]) {
                cylinder(h = 30, r = 1.375, center = true);
            }
            translate([25.4 * 5.819, 25.4 * 1.030, 0]) {
                cylinder(h = 30, r = 1.375, center = true);
            }
            translate([25.4 * .558, 25.4 * 2.469, 0]) {
                cylinder(h = 30, r = 1.375, center = true);
            }
            translate([25.4 * 4.373, 25.4 * 2.678, 0]) {
                cylinder(h = 30, r = 1.375, center = true);
            }
            translate([25.4 * 4.388, 25.4 * 4.535, 0]) {
                cylinder(h = 30, r = 1.375, center = true);
            }
        }
    }
    // power
    color(c = [.3, .3, .3, 1]) {
        translate([0, 82.4, 0])
            cube([13, 10, 11.2]);
        translate([-10, 87.4, 6.9])
        rotate([0, 90, 0])
            cylinder(h = 20, r = 5.5, center = true);
    }
    // switch
    color(c = [.7, .7, .7, 1]) {
        translate([1, 64.4, 0])
            cube([10.3, 15.5, 9.3]);
    }
    color(c = [.3, .3, .3, 1]) {
        translate([4.65, 64.4 + 5, 0])
            cube([3, 5.5, 15.8]);
    }

    // USB J33
    color(c = [.7, .7, .7, 1]) {
        translate([-1, 35.4, 0])
            cube([5.8, 8, 3.3]);
    }
    // USB J11
    color(c = [.7, .7, .7, 1]) {
        translate([178.08, 20, 0])
            cube([5.8, 8, 3.3]);
    }

    // USB J16
    color(c = [.7, .7, .7, 1]) {
        translate([92.5, 120.93, 0])
            cube([8, 5.8, 3.3]);
    }

    // SD J30
    color(c = [.7, .7, .7, 1]) {
        translate([57.9, 96.73, 0])
            cube([28.5, 29, 3]);
    }

    // Eth J1
    color(c = [.7, .7, .7, 1]) {
        translate([166.88, 65.8, 0])
            cube([16, 16.5, 13.5]);
    }
    
    // Eth J2
    color(c = [.7, .7, .7, 1]) {
        translate([166.88, 92, 0])
            cube([16, 16.5, 13.5]);
    }
    
    // CPU cooler
    color(c = [.3, .3, .3, 1]) {
        translate([92, 33, 0])
            cube([23, 23, 23]);
    }
    
    // button
    color(c = [.7, .7, .7, 1]) {
        translate([9, 106.03, -1.2])
            cube([6, 6, 5]);
    }
    color(c = [1, .3, .3, 1]) {
        translate([12, 109.03, 3.3])
            cylinder(h = 3, r = 2,center = true);
    }
}

module support_i() {
    difference () {
        union() {
            translate([0, 0, -10.8])
                cylinder(h = 18.4, r = 3, center = true);
            translate([0, 0, -2])
                cylinder(h = 4, r = 1, center = true);
            translate([0, 0, -18])
                cylinder(h = 4, r = 5, center = true);
        }
        union() {
            translate([0, 0, -12])
                cylinder(h = 20, r = 1, center = true);
            translate([0, 0, -16]) {
                rotate_extrude(convexity = 10) {
                    translate([5, 0, 0]) {
                        circle(r = 2);
                    }
                }
            }
        }
    }
}

module support_o() {
    difference() {
        union() {
            translate([0, 0, -10.8])
                cylinder(h = 18.4, r = 4, center = true);
            translate([0, 0, -18])
                cylinder(h = 4, r = 6, center = true);
        }
        union () {
            translate([0, 0, 0])
                cylinder(h = 20, r = 1.5, center = true);
            translate([0, 0, -12.8])
                cylinder(h = 18.4, r = 2.75, center = true);
            translate([0, 0, -16]) {
                rotate_extrude(convexity = 10) {
                    translate([6, 0, 0]) {
                        circle(r = 2);
                    }
                }
            }
        }
    }
}

module support_t() {
    difference() {
        union() {
            translate([0, 0, 15])
                cylinder(h = 30, r = 3.25, center = true);
            translate([0, 0, 28])
                cylinder(h = 4, r = 5.25, center = true);
        }
        union () {
            translate([0, 0, -2])
                cylinder(h = 30, r = .9, center = true);
            translate([0, 0, 26]) {
                rotate_extrude(convexity = 10) {
                    translate([5.25, 0, 0]) {
                        circle(r = 2);
                    }
                }
            }
        }
    }
}

module bottom() {
    difference() {
        union() {
            translate([-2.5, -2.5 - 47, -20]) {
                cube([25.4 * 7.2 + 5, 25.4 * 4.95 + 5 + 47, 20]);
            }
        }
        union () {
            translate([-.5, -.5 - 47, -18]) {
                cube([25.4 * 7.2 + 1, 25.4 * 4.95 + 1 + 47, 28]);
            }
            translate([12.7 * 7.2, -1.5 - 47, -10]) {
                fence(160, 15);
            }
            translate([12.7 * 7.2, 1.5+ 25.4 * 4.95, -10]) {
                fence(160, 15);
            }
            translate([-1.5, 12.7 * 4.95 - 23.5, -10]) {
                rotate([0, 0, 90]) {
                    fence(150, 15);
                }
            }
            translate([1.5 + 25.4 * 7.2, 12.7 * 4.95 - 23.5, -10]) {
                rotate([0, 0, 90]) {
                    fence(150, 15);
                }
            }
            // outer
            translate([25.4 * .165, 25.4 * .165, -20]) {
                cylinder(h = 10, r = 2.75, center = true);
                translate([25.4 * 6.503, 25.4 * 0, 0]) {
                    cylinder(h = 10, r = 2.75, center = true);
                }
                translate([25.4 * 0, 25.4 * 4.620, 0]) {
                    cylinder(h = 10, r = 2.75, center = true);
                }
                translate([25.4 * 6.672, 25.4 * 4.535, 0]) {
                    cylinder(h = 10, r = 2.75, center = true);
                }
            }
        }
    }
    translate([25.4 * .165, 25.4 * .165, 0]) {
        // outer
        support_o();
        translate([25.4 * 6.503, 25.4 * 0, 0]) {
            support_o();
        }
        translate([25.4 * 0, 25.4 * 4.620, 0]) {
            difference() {
                support_o();
                translate([8.1, 0, -1.8])
                    cube([10, 10, 3.6], center = true);
            }
        }
        translate([25.4 * 6.672, 25.4 * 4.535, 0]) {
            difference() {
                support_o();
                translate([-8.1, 0, -1.8])
                    cube([10, 10, 3.6], center = true);
            }
        }
        // inner
        translate([25.4 * 1.224, 25.4 * 0, 0]) {
            support_i();
        }
        translate([25.4 * 3.159, 25.4 * 0.940, 0]) {
            support_i();
        }
        translate([25.4 * 5.819, 25.4 * 1.030, 0]) {
            support_i();
        }
        translate([25.4 * .558, 25.4 * 2.469, 0]) {
            support_i();
        }
        translate([25.4 * 4.373, 25.4 * 2.678, 0]) {
            support_i();
        }
        translate([25.4 * 4.388, 25.4 * 4.535, 0]) {
            support_i();
        }
    }
}

module top() {
    difference() {
        union() {
            translate([-2.5, -2.5 - 47, 0]) {
                cube([25.4 * 7.2 + 5, 25.4 * 4.95 + 5 + 47, 30]);
            }
        }
        union () {
            translate([-.5, -.5 - 47, -2]) {
                cube([25.4 * 7.2 + 1, 25.4 * 4.95 + 1 + 47, 30]);
            }
            // power
            translate([0, 87.4, 6.9])
            rotate([0, 90, 0])
                cylinder(h = 20, r = 6, center = true);
            // switch
            translate([-4, 64.4, -1])
                cube([10.3, 10, 18]);
            // Eth J1
            translate([175, 65.3, -1])
                cube([18, 18.5, 13.5]);
            // Eth J2
            translate([175, 91, -1])
                cube([18, 18.5, 13.5]);
            // SD J30
            translate([57.9, 105, -1])
                cube([28.5, 29, 4]);
            
            // USB J33
            translate([-4, 34.4, -1])
                cube([5.8, 10, 5.3]);
            // USB J11
            translate([182.08, 19, -1])
                cube([5.8, 10, 5.3]);
            // USB J16
            translate([91.5, 124.93, -1])
                cube([10, 5.8, 5.3]);
            translate([9.5, 111.03 + .5, 25])
                cube([30, .5, 10]);
            translate([9.5, 111.03 - 5, 25])
                cube([30, .5, 10]);
            translate([9.5, 111.03 - 5, 25])
                cube([.5, 6, 10]);
            translate([7,-39,30]) {
                difference() {
                    for (i = [0:8]) {
                        for (j = [0:4]) {
                            translate([20 * i , 20 * sqrt(3) * j, 0])
                                cylinder(h = 10, r = 6, center = true);
                            translate([20 * (i + .5) , 20 * sqrt(3) * (j + .5), 0])
                                cylinder(h = 10, r = 6, center = true);
                        }
                    }
                    union() {
                        translate([20 * 0 , 20 * sqrt(3) * 1, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 8 , 20 * sqrt(3) * 1, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 1.5 , 20 * sqrt(3) * 1.5, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 4 , 20 * sqrt(3) * 2, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 7 , 20 * sqrt(3) * 2, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 0 , 20 * sqrt(3) * 3, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 1 , 20 * sqrt(3) * 3, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 5.5 , 20 * sqrt(3) * 3.5, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 5.5 , 20 * sqrt(3) * 4.5, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 8.5 , 20 * sqrt(3) * 4.5, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 0 , 20 * sqrt(3) * 4, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 1 , 20 * sqrt(3) * 4, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 2 , 20 * sqrt(3) * 4, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 0.5 , 20 * sqrt(3) * 4.5, 0])
                            cylinder(h = 12, r = 7, center = true);
                        translate([20 * 1.5 , 20 * sqrt(3) * 4.5, 0])
                            cylinder(h = 12, r = 7, center = true);
                    }
                }
            }
        }
    }
    translate([2.5, 44.4, 18]) {
        cube([2, 50, 12]);
    }
    translate([2.5, 68, 18]) {
        cube([15, 2, 12]);
    }
    translate([10, 107.03, 5])
        cube([4, 4, 25]);
    translate([25.4 * .165, 25.4 * .165, 0]) {
        // outer
        support_t();
        translate([-4, 0, 15])
            cube([4, 2, 30], center = true);
        translate([25.4 * 6.503, 25.4 * 0, 0]) {
            support_t();
            translate([8.5 , 0, 15])
                cube([13, 2, 30], center = true);
        }
        translate([25.4 * 0, 25.4 * 4.620, 0]) {
            support_t();
            translate([-4, 0, 15])
                cube([4, 2, 30], center = true);
        }
        translate([25.4 * 6.672, 25.4 * 4.535, 0]) {
            difference() {
                support_t();
                translate([-8.1, 0, -1])
                    cube([10, 10, 22], center = true);
            }
            translate([0, 5, 15])
                cube([2, 6, 30], center = true);
        }
        translate([25.4 * 1.224, 25.4 * 0, 0]) {
            support_t();
        }
        translate([25.4 * 3.159, 25.4 * 0.940, 0]) {
            support_t();
        }
        translate([25.4 * 5.819, 25.4 * 1.030, 0]) {
            support_t();
        }
        translate([25.4 * .558, 25.4 * 2.469, 0]) {
            support_t();
        }
        translate([25.4 * 4.373, 25.4 * 2.678, 0]) {
            support_t();
        }
        translate([25.4 * 4.388, 25.4 * 4.535, 0]) {
            difference() {
            support_t();
                translate([8.1, 0, -1])
                    cube([10, 10, 22], center = true);
            }
        }
    }
}

module slider() {
    color(c = [.7, .3, .3, 1]) {
        difference() {
            union() {
                translate([0, 61.9 + 5, 10])
                    cube([10.15, 10.5, 5]);
                translate([-4, 61.9 + 6, 10])
                    cube ([5, 3.5, 5]);
                translate([0, 61.9 - 20, 13])
                    cube ([2, 60.5, 7]);
                translate([0, 61.9 - 20, 15.5])
                    cube ([5, 60.5, 2]);
            }
            translate([4.15, 64.4 + 4.5, 0])
                cube([4, 6.5, 25.8]);
        }
    }
}

platina();
slider();
bottom();
top();

rotate([0,180,0]) {
    //top();
}

rotate([0, 0, 0]) {
    //slider();
}
