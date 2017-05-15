# Set a project name an version number for our library
project(mylibrary VERSION 1.0)

# List header files
set(HDRS
  benchmark.h
  go.h
  player.h
  randomai.h



)

# List source files
set(SRCS
  go.cpp
  player.cpp
  randomai.cpp

)




# Add rules to create a library
add_library(${PROJECT_NAME} SHARED ${SRCS} ${HDRS})
#add_library(${PROJECT_NAME} STATIC ${SRCS} ${HDRS})

# Tell the compiler to use the our compile flags
set_target_properties(${PROJECT_NAME} PROPERTIES COMPILE_FLAGS ${MY_COMPILE_FLAGS})


# Unit testing
if(GTEST_FOUND)

  # Add test
  ADD_TESTS(go_engine_tests ${PROJECT_NAME})
  ADD_TESTS(test ${PROJECT_NAME})
endif(GTEST_FOUND)
