// === Movement ===
var move_speed = 4;
var hmove = 0;

// A/D or Left/Right keys for movement
if (keyboard_check(ord("A"))) hmove = -1;
if (keyboard_check(ord("D"))) hmove = 1;

// === Apply Movement ===
x += hmove * move_speed;

// === Sprite + Flip Logic ===
if (hmove != 0) {
    // Running
    sprite_index = runningNinja;
    image_xscale = (hmove > 0) ? 1 : -1;
    image_speed = 1;
} else {
    // Idle
    sprite_index = ninja_idle_;
    image_speed = 1; // Or 0 if completely static
    // Keep current facing direction
}
