// My Go Engine
#include "../../mylibrary/go.h"

// gtest
#include <gtest/gtest.h>


namespace go = mylib::go;

TEST(PlaceStone,DuplicateStone) {

    go::Board::BoardData board_data;
    board_data[go::Point(3,3)] = go::Stonecolor::Black;

    // Create a engine from state
    go::Board board {std::move(board_data),go::Stonecolor::White,false};

    board.placeStone(go::Point(3,3));

   // EXPECT_TRUE(board.stone(go::Point(3,3)).checkcolor()==go::Stonecolor::Black);


}
