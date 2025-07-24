// === Movement ===
var move_speed = 4;
var hmove = 0;

// === Attack Trigger ===
if (!attack_active && keyboard_check_pressed(vk_space)) {
    sprite_index = ninjaAttack;
    image_index = 0;
    image_speed = 4 // 10 fps at 60 room speed
    attack_active = true;
}

// === Attack Handling ===
if (attack_active) {
    // Wait until attack animation finishes
    if (image_index >= image_number - 1) {
        attack_active = false;
    }

    // Prevent movement during attack
    exit;
}

// === Movement Input ===
if (keyboard_check(ord("A"))) hmove = -1;
if (keyboard_check(ord("D"))) hmove = 1;

// === Apply Movement ===
x += hmove * move_speed;

// === Sprite + Flip Logic ===
if (hmove != 0) {
    sprite_index = runningNinja;
    image_xscale = (hmove > 0) ? 1 : -1;
    image_speed = 1;
} else {
    sprite_index = ninja_idle_;
    image_speed = 1;
}
