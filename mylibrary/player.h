
#ifndef PLAYER_H
#define PLAYER_H




#include "go.h"

namespace mylib {

namespace go {



  class Player {
  public:
    explicit Player( std::shared_ptr<Engine> engine, Stonecolor Stones );
    virtual ~Player() = default;

    virtual PlayerType      type() const = 0;
    Stonecolor                   stones() const;
    void                    setStones( Stonecolor Stones );
    const Engine&           engine() const;

  private:
    std::shared_ptr<Engine>   _engine;
    Stonecolor                     _stones;
  };



  class HumanPlayer : public Player {
  public:
    using Player::Player;

    PlayerType    type() const override final;
  };



  class AiPlayer : public Player {
  public:
    enum class Move {
      PlaceStone  = 0,
      Pass        = 1
    };

    using Player::Player;

    PlayerType        type() const override final;
    Move              nextMove() const;
    Point             nextStone() const;
    virtual void      think( time_type timeout ) = 0;

  protected:
    mutable Point     _next_Stonecolor {Point(0,0)}; //! cach variable
    mutable Move      _next_move  {Move::Pass}; //! cach variable

  };



} // END namespace go

} // END namespace mylib



#endif // PLAYER_H

