#include "randomai.h"



// stl
#include <set>




namespace mylib {
namespace go {


  RandomAi::RandomAi(std::shared_ptr<Engine> engine, Stonecolor stones)
    : AiPlayer {engine,stones}, _generator{} {

      _generator.seed(
            static_cast<std::mt19937::result_type>(
              std::chrono::system_clock::now().time_since_epoch().count()));
  }

  void
  RandomAi::think(time_type /*timeout*/) {

    // Find empty positions (not to confuse with legal positions)

    using Stones = std::set<Point>;
    Stones free_positions;

    auto board = engine().board();
    auto size = board.size();

    for( int i {0}; i < size.first; ++i ) {
      for( int j {0}; j < size.second; ++j ) {
        if(!board.hasStone({i,j})) free_positions.emplace(Point({i,j}));
      }
    }

    // "Figure out" the next CLEVER move
    if(!free_positions.size()) {
      _next_move = Move::Pass;
    }
    else {
      std::uniform_int_distribution<Stones::size_type> dist{ 0, free_positions.size()-1};

      Stones::const_iterator cit{free_positions.begin()};
      std::advance(cit,dist(_generator));

      _next_move = Move::PlaceStone;
      _next_Stonecolor = *cit;
    }
  }




} // END namespace go

} // END namespace mylib





