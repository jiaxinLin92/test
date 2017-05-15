#ifndef BENCHMARK_H
#define BENCHMARK_H

#include <iostream>
#include <fstream>
#include <vector>
#include <random>

namespace mylib {

namespace benchmark {


  struct TimingData {
    size_t size;
    size_t duration;

    TimingData( size_t s, size_t d )
      : size{s}, duration{d} {}

  }; // END struct TimingData




  template <typename Container>
  void
  writeToDat( Container C, const std::string& benchmarkname ) {

    // Dump data to file of the format size in aending order
    // size time
    // s0   t0
    // s1   t1
    // s2   t2

    // Build output data
    std::ofstream ofs;
    ofs.exceptions( std::ofstream::failbit | std::ofstream::badbit );

    ofs.open( "benchmark_" + benchmarkname + ".dat", std::ofstream::out | std::ofstream::trunc );
    ofs << "size time" << std::endl;
    for( const auto& data : C)
      ofs << data.size << " " << data.duration << std::endl;
    ofs.close();
  }



  template <typename Elem>
  std::vector<Elem>
  genDataTestSet( typename std::vector<Elem>::size_type n ) {

    std::vector<Elem> C;

    std::random_device rd;
    std::mt19937 mt(rd());
    std::uniform_int_distribution<Elem> dist(
      std::numeric_limits<Elem>::min(),
      std::numeric_limits<Elem>::max());

    C.reserve(n);
    for( typename std::vector<Elem>::size_type i {0}; i < n; ++i )
      C.emplace_back(dist(mt));

    return C;
  }


} // END namespace benchmark

} // END namespace mylib

#endif // BENCHMARK_H
