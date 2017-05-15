cmake_minimum_required(VERSION 3.0)

# Set a project name and version number
project(HelloGo VERSION 1.0)

# Global compile flags
set(MY_COMPILE_FLAGS "--std=c++11 -pedantic -Wall -Wextra")

# Unit testing
find_package(GTest REQUIRED)
if(GTEST_FOUND)

  include_directories(${GTEST_INCLUDE_DIRS})
  enable_testing()

  # Helper function
  # Invariant the named TEST SET is located in a subdirectory named 'tests'
  function(ADD_TESTS TEST_SET_NAME)
    add_executable( test_${TEST_SET_NAME} tests/${TEST_SET_NAME}.cpp )
    target_link_libraries(test_${TEST_SET_NAME} ${ARGN} ${GTEST_LIBRARIES} ${GTEST_MAIN_LIBRARIES} pthread)
    set_target_properties(test_${TEST_SET_NAME} PROPERTIES COMPILE_FLAGS ${MY_COMPILE_FLAGS})
    gtest_add_tests( test_${TEST_SET_NAME} "" tests/${TEST_SET_NAME}.cpp )
    add_dependencies( test_${TEST_SET_NAME} ${ARGN} )
  endfunction(ADD_TESTS)

endif(GTEST_FOUND)


#####
# Let us build our library

# Add library as subdirectory
add_subdirectory(mylibrary)





#####
# Let us add a benchmark directory
option(BUILD_BENCHMARKS "Build benchmarks..." FALSE)
if(BUILD_BENCHMARKS)
  add_subdirectory(benchmarks)
endif(BUILD_BENCHMARKS)


#####
# Let us build our report
option(BUILD_REPORT "Build a latex report..." FALSE)
if(BUILD_REPORT)
  add_subdirectory(report)
endif(BUILD_REPORT)





##### 
# Let us build a hellow world program using a function from our library
option(BUILD_CLIENT "Build the go program..." FALSE)
if(BUILD_CLIENT)


  # Make sure the our library is built befor our client application
  # Default behaviour as the add_executable rule is listed after the add_library rule from the library subdirectory
  add_subdirectory(client)
  add_dependencies(client mylibrary)


endif(BUILD_CLIENT)





