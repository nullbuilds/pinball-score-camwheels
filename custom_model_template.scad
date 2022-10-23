/**
 This file contains the functions/modules needed to create models of Chicago Coin score camwheels.
 Copyright (C) 2022  Charles (Null Builds)

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

use <score_camwheel.scad>;

// This file is intended as a starting point for creating your own custom camwheels. See the README
// for more information on creating custom camwheels.
// 
// As most cams were designed in the US, it is assumed their original dimensions were in inches;
// however, models for 3D printing are typically defined in millimeters. I have provided a helper
// function to convert inches to millimeters if you like; however, if you'd prefer to define your
// models in millimeters you can simply ignore it and provide the mm directly. For example, the
// following two lines will produce a camwheel with the same diameter:
//   wheel_minor_diameter = inches_to_millimeters(3 + 5/32),
//   
//   wheel_minor_diameter = 80.16875,
CUSTOM_MODEL = create_score_camwheel_specification(
    // This optional text will be inset into the underside of the camwheel for easy identification.
    // If you don't want a label, simply remove everything between the double-quotes.
    label_text = "CUSTOM",
    
    // This is the diameter of camwheel betwen cams. You want this diameter to be low enough that
    // your switches are not activated at this distance.
    wheel_minor_diameter = inches_to_millimeters(3 + 5/32),
    
    // This is the thickness of the camwheel.
    wheel_thickness = inches_to_millimeters(7/64),
    
    // This is the diameter of the motor shaft that will drive the camwheels.
    shaft_diameter = inches_to_millimeters(1/4),
    
    // This is the outer diameter of the shaft collar which clamps onto the motor shaft. A thicker
    // collar will help to prevent cracking but will require longer set screws.
    collar_outer_diameter = inches_to_millimeters(1 + 3/32),
    
    // This is the radius of the fillet around the motor shaft collar. This specific fillet is
    // mostly optional. You can remove it by setting it to 0; however, some other fillets in this
    // file are necessary (see their descriptions for more details).
    collar_fillet_radius = inches_to_millimeters(1/16),
    
    // This is the height of the shaft collar and by extension how much space will be between each
    // camwheel. Note this does not include the height of the boss on top of the camwheels in some
    // later Chicago Coin camwheels (ex 190-517-X).
    collar_height = inches_to_millimeters(1/2),
    
    // This is the diameter of the boss on top of the motor shaft collar. This boss is not present
    // on all models of camwheels and can be removed by setting this or the collar_boss_diameter
    // parameter to 0.
    collar_boss_height = inches_to_millimeters(5/64),
    
    // This is the diameter of the boss on top of the motor shaft collar. This boss is not present
    // on all models of camwheels and can be removed by setting the collar_boss_height parameter to
    // 0.
    collar_boss_diameter = inches_to_millimeters(31/64),
    
    // For camwheels with a motor shaft collar boss, this sets the depth of the recess on the back
    // of each camwheel for the boss to fit into. For camwheels without a collar boss, this recess
    // can be removed by setting this value to 0.
    collar_boss_recess_depth = inches_to_millimeters(3/32),
    
    // For camwheels with a motor shaft collar boss, this sets the diameter of the recess on the
    // back of each camwheel for the boss to fit into. For camwheels without a collar boss, this
    // recess can be removed by setting the collar_boss_recess_depth parameter to 0.
    collar_boss_recess_diameter = inches_to_millimeters(1/2),
    
    // This sets the diameter of the hole for each set screw. Note that while untested, you could
    // theoretically add heat-set inserts to the set screw holes to give them metal threads to
    // engage with. If you choose to do this, consult your heat-set insert's spec sheet for the
    // required hole diameter.
    set_screw_hole_diameter = inches_to_millimeters(17/128),
    
    // Defines the distance from the top of the shaft collar to the center of the set screw hole.
    // This value must be greater than the radius of the set screw.
    set_screw_hole_offset = inches_to_millimeters(7/32),
    
    // This sets the height of the three support posts on the camwheel.
    support_height = inches_to_millimeters(37/64),
    
    // This sets the base diameter of the three support posts on the camwheel (not including the
    // support's fillet radius).
    support_base_diameter = inches_to_millimeters(11/32),
    
    // This sets the tip diameter of the three support posts on the camwheel. You can set this to a
    // smaller value than the base diameter for a slight taper or set it to the same diameter for no
    // taper.
    support_tip_diameter = inches_to_millimeters(9/32),
    
    // The diameter of the fillet around each support post. It is strongly recommended that you do
    // not remove the fillet as it will help to add cross-sectional strength to the relatively thin
    // posts; however, you can remove it by setting this value to 0.
    support_fillet_radius = inches_to_millimeters(1/16),
    
    // This sets the inner diameter of each support post. This must be less than the support base
    // and tip diameters.
    support_inner_diameter = inches_to_millimeters(5/32),
    
    // Defines the distance from the center of the motor shaft to the center of each support post.
    support_spacing = inches_to_millimeters(1 + 1/4),
    
    // Most camwheels include a retainer ring on their backside around the support post holes. This
    // is presumably to add rigidity to the post.
    
    // This parameter defines the height of the support post retainer ring. You can remove these
    // rings by either settings this value to 0 or if you prefer you can remove all features from
    // the back of the camwheeel by selecting the optimize for fdm setting in the model_viewer file.
    support_retainer_height = inches_to_millimeters(1/8),
    
    // This parameter defines the outer diameter of the support post retainer ring. You can remove
    // this ring by setting the support_retainer_height parameter to 0.
    support_retainer_outer_diameter = inches_to_millimeters(13/32),
    
    // This sets the outer radius of the fillet around the support retainer rings. This fillet is
    // mostly optional and can be removed by setting this value to 0.
    support_retainer_fillet_radius  = inches_to_millimeters(1/16),
    
    // For camwheels whose support posts are longer than the motor shaft collar, you'll need to add
    // a recess in the back of the camwheel to allow the wheels to fully seat together.
    
    // This defines the depth of the support post recess. This value can be set to 0 if you do not
    // need the recess.
    support_recess_depth = inches_to_millimeters(5/64),
    
    // This paramter defines the diameter of the support post recess. For camwheels with support
    // retainer rings, this value also defines the inner diameter of the rings.
    support_recess_diameter = inches_to_millimeters(11/32),
    
    // Most camwheels have a fifth hole between one of the support posts and the shaft collar. I am
    // unsure what purpose this serves; however, it does make a convenient reference point for other
    // geometry so I have taken to calling it the index hole.
    
    // This defines the diameter of the index hole.
    index_hole_diameter = inches_to_millimeters(9/64),
    
    // This defines the distance from the center of the motor shaft to the center of the index hole.
    // This value must be greater than the radius of the motor shaft collar.
    index_hole_spacing = inches_to_millimeters(43/64),
    
    // This defines the outer diameter of the boss around the index hole on the backside of the
    // camwheel.
    index_hole_boss_diameter = inches_to_millimeters(7/32),
    
    // This defines the height of the boss around the index hole on the backside of the camwheel.
    index_hole_boss_height = inches_to_millimeters(5/64),
    
    // This set the fillet radious around the index hole boss. Note that adding a fillet when the
    // index hole is too close to the shaft collar will prevent the collar from seating properly.
    index_hole_boss_fillet_radius = 0,
    
    // You can have as many cams on the camwheel as you like and each can be a completely different
    // size. Just add or remove cam specifications from this list. When viewing the model of a
    // camwheel from the top (the side with the label) it is assumed the camwheel will be rotating
    // in the clockwise direction. Note that camwheels are installed upside-down in most machines.
    // 
    // While you can remove the ease-in slope, it's strongly recommended that you don't as this may
    // cause damage to your switches.
    cam_specifications = [
        // This first cam protrudes 5/32" from the camwheel and spans 90 degrees. It includes a
        // ease-in slope which spans 6 degrees and has no ease-out slope. The cam first engages
        // at a 0 degree offset from the index hole
        create_cam_specification(
            size = inches_to_millimeters(5/32),
            start_angle = 0,
            engaged_span = 90,
            ease_in_span = 6,
            ease_out_span = 0
        ),
        
        // The second cam protrudes 1/3" from the camwheel and spans 10 degrees. It includes a
        // ease-in slope which spans 20 degrees and has an ease-out slope spanning 10 degrees. The
        // cam first engages at a 160 degree offset from the index hole
        create_cam_specification(
            size = inches_to_millimeters(1/3),
            start_angle = 160,
            engaged_span = 10,
            ease_in_span = 20,
            ease_out_span = 10
        ),
        
        // The third cam protrudes 1/16" from the camwheel and spans 30 degrees. It includes a
        // ease-in slope which spans 5 degrees and has an ease-out slope spanning 3 degrees. The
        // cam first engages at a 200 degree offset from the index hole
        create_cam_specification(
            size = inches_to_millimeters(1/16),
            start_angle = 200,
            engaged_span = 30,
            ease_in_span = 5,
            ease_out_span = 3
        )
    ]
);
