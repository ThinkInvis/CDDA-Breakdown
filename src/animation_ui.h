#pragma once
#ifndef ANIMATION_UI_H
#define ANIMATION_UI_H

#include "color.h"

enum aui_easing_type {
    step, linear, exponential, logarithmic
};

struct aui_rect_target {
    point init_UL;
    point init_DR;
    point goal_UL;
    point goal_DR;
    aui_easing_type easing;
    float easing_factor;
    float lerp_factor;
};

std::vector<ui> aui_target_cache;

float aui_last;

void aui_update();

#endif
