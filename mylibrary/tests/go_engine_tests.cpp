
// My Go Engine
#include "../../mylibrary/go.h"

// gtest
#include <gtest/gtest.h>


namespace go = mylib::go;


TEST(GoEngineTest_Board,FromStateConstructor) {

//      |x x x x x|
//      |x x x x x|
//      |x x b x x|
//      |x x x x x|
//      |x x x x x|

  go::Board::BoardData board_data;
  board_data[go::Point(3,3)] = go::Stonecolor::Black;

  // Create a engine from state
  go::Board board {std::move(board_data),go::Stonecolor::White,false};


  // EXPECT a stone at (3,3)
  EXPECT_TRUE(board.hasStone({3,3}));

  // EXPECT a black stone at (3,3)
  EXPECT_TRUE(board.stone({3,3}) == go::Stonecolor::Black);

  EXPECT_FALSE(board.stone({3,3}) == go::Stonecolor::White);
}
TEST(GoEngineTest_LegalStonePlacements,SimpleCaptureRuleTest) {

    go::Board::BoardData board_data;
    //      |x x x x x|
    //      |x x w x x|
    //      |x w b w x|
    //      |x x w x x|
    //      |x x x x x|
    go::Stonecolor B = go::Stonecolor::Black;
    go::Stonecolor W = go::Stonecolor::White;

    go::Board::BoardData b;
                  b[{3,2}] = W;
    b[{2,3}] = W; b[{3,3}] = B; b[{4,3}] = W;
                  //b[{3,4}] = W;
       // Create a PvP engine
       auto engine = std::make_shared<go::Engine>();
       engine->newGameFromState( std::move(b), go::Stonecolor::White, false );
       engine->placeStone(go::Point(3,4));
    EXPECT_FALSE(engine->validateStone(go::Point(3,3)));

}
TEST(GoEngineTest_LegalStonePlacements,SimpleKoRuleTest) {

//      |x x x x x|
//      |x x w x x|
//      |x w b w x|
//      |x b x b x|
//      |x x b x x|

  go::Stonecolor B = go::Stonecolor::Black;
  go::Stonecolor W = go::Stonecolor::White;

  go::Board::BoardData b;
                b[{3,2}] = W;
  b[{2,3}] = W; b[{3,3}] = B; b[{4,3}] = W;
  b[{2,4}] = B;               b[{4,4}] = B;
                b[{3,5}] = B;


  // Create a PvP engine
  auto engine = std::make_shared<go::Engine>();
  engine->newGameFromState( std::move(b), go::Stonecolor::White, false );

  // Set up the game for the 'ko' rule to trigger:
  // white removes the freedoms of black's Stone on (3,3)
  // and captures it.
  engine->placeStone(go::Point(3,4));

  // Play a illegal move for black triggering the 'ko' rule
  // when black tries to capture whites (3,4).
  EXPECT_FALSE(engine->validateStone(go::Point(3,4)));
  //
  //exam
//  EXPECT_FALSE(engine->hasStone(go::Point(3,3)));
  EXPECT_FALSE(engine->validateStone(go::Point(3,3)));
}
