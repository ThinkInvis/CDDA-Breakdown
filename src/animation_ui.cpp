#include "animation.h"

#include "game.h"
#include "options.h"
#include "output.h"
#include "player.h"
#include "popup.h"

#ifdef TILES
#include <memory>

#include "cata_tiles.h" // all animation functions will be pushed out to a cata_tiles function in some manner

extern std::unique_ptr<cata_tiles> tilecontext; // obtained from sdltiles.cpp
#endif

#include <algorithm>

void aui_update() {
    //float aui_curr = now
}
