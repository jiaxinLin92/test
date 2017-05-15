#ifndef RANDOMAI_H
#define RANDOMAI_H


#include "go.h"
#include "player.h"


// stl
#include <random>



namespace mylib {
namespace go {



  class RandomAi : public AiPlayer {
  public:
    explicit RandomAi( std::shared_ptr<Engine> engine, Stonecolor stones );

    virtual void    think( time_type timeout) override final;

  private:
    std::mt19937  _generator;

  }; // END class RandomAi



} // END namespace go

} // END namespace mylib


#endif // RANDOMAI_H
