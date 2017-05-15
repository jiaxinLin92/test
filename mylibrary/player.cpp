#include "player.h"


namespace mylib {
namespace go {

  Player::Player(std::shared_ptr<Engine> engine, Stonecolor Stones) : _engine{engine}, _stones{Stones} {}
  Stonecolor Player::stones() const { return _stones; }

  const Engine&
  Player::engine() const {

    return *_engine;
  }

  PlayerType HumanPlayer::type() const { return PlayerType::Human; }

  PlayerType AiPlayer::type() const { return PlayerType::Ai; }

  AiPlayer::Move AiPlayer::nextMove() const { return _next_move; }

  Point AiPlayer::nextStone() const { return _next_Stonecolor; }



} // END namespace go

} // END namespace mylib
