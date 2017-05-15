#####
# Let us create some benchmark apps we can use for our report

# Benchmark our game engine
add_subdirectory(benchmark_01)
add_dependencies(benchmark_01 mylibrary)

