cmake_minimum_required(VERSION 2.8.11)
project(LINENOISE)

add_library(linenoise src/linenoise.cpp)
add_executable(linenoise-example src/example.cpp)

target_link_libraries(linenoise-example
                      LINK_PUBLIC linenoise)

install(TARGETS linenoise-example linenoise
        RUNTIME DESTINATION bin
        ARCHIVE DESTINATION lib)
