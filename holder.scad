$fn = 100;

outer_cylinder_radius = 45;
outer_cylinder_height = 4;

inner_cylinder1_radius = 33;
inner_cylinder1_height = 5;

inner_cylinder2_radius = 31;
inner_cylinder2_height = 7;

screw1_x = -(outer_cylinder_radius - ((outer_cylinder_radius - inner_cylinder1_radius) / 2));
screw2_x = outer_cylinder_radius - ((outer_cylinder_radius - inner_cylinder1_radius) / 2);

screw_head_radius = 4;
screw_head_height = 3;
screw_height = 7;
screw_radius = 2;

difference()
{
    cylinder(h = outer_cylinder_height, r = outer_cylinder_radius);

    translate([ 0, 0, +1.5 ])
    {
        cylinder(h = inner_cylinder1_height, r = inner_cylinder1_radius);
    }

    translate([ 0, 0, -1 ])
    {
        cylinder(h = inner_cylinder2_height, r = inner_cylinder2_radius);
    }

    translate([ screw1_x, 0, -1 ])
    {
        cylinder(h = screw_height, r = screw_radius);
    }

    translate([ screw1_x, 0, 0 ])
    {
        cylinder(h = screw_head_height, r = screw_head_radius);
    }

    translate([ screw2_x, 0, -1 ])
    {
        cylinder(h = screw_height, r = screw_radius);
    }

    translate([ screw2_x, 0, 0 ])
    {
        cylinder(h = screw_head_height, r = screw_head_radius);
    }
}
