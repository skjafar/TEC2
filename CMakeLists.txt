cmake_minimum_required(VERSION 3.13.4)

# Enable generation of compile_commands.json files
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE CACHE INTERNAL "")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}")
project(TEC2)

add_subdirectory(external/TermOx)
add_subdirectory(src)

target_include_directories(${PROJECT_NAME} PUBLIC include)
#target_link_directories(${PROJECT_NAME} PRIVATE adder)
#target_link_libraries(${PROJECT_NAME} adder)

# Copy compile_commands.json files from build folder to source folders
add_custom_target(copy-compile-commands ALL
  ${CMAKE_COMMAND} -E copy_if_different
  ${CMAKE_BINARY_DIR}/compile_commands.json ${CMAKE_CURRENT_LIST_DIR} )
