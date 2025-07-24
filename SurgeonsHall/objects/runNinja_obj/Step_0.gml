// Movement speed
var move_speed = 4;

// Reset motion
var hmove = 0;
var vmove = 0;

// WASD input
if (keyboard_check(ord("A"))) {
    hmove = -1;
}
if (keyboard_check(ord("D"))) {
    hmove = 1;
}
if (keyboard_check(ord("W"))) {
    vmove = -1;
}
if (keyboard_check(ord("S"))) {
    vmove = 1;
}

// Normalize diagonal movement
if (hmove != 0 && vmove != 0) {
    var normal = point_distance(0, 0, hmove, vmove);
    hmove /= normal;
    vmove /= normal;
}

// Apply movement
x += hmove * move_speed;
y += vmove * move_speed;
