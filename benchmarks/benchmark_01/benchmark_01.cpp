// mylib
#include "../../mylibrary/benchmark.h"


// stl
#include <chrono>
#include <vector>
#include <stdexcept>
#include <algorithm>




///
///
///   This program benchmarks run times when sorting
///
///








int main(int /*argc*/, char** /*argv*/) try {

  namespace bm = mylib::benchmark;

  std::vector<size_t> fill_sizes {
    20
    ,100
    ,1000
//    ,10000
//    ,20000
//    ,30000
//    ,40000
//    ,50000
//    ,100000
  };


  std::cout << "Benchmark GO engine!" << std::endl;


  return 0;
}
catch (std::ifstream::failure e) {
  std::cerr << "Exception opening/reading/closing file: " << e.what();
}
catch(const std::exception& e){
  std::cerr << "An exception occurred: " << e.what() << std::endl;
}
catch(...) {
  std::cerr << "Unknown exception thrown!" << std::endl;
}
