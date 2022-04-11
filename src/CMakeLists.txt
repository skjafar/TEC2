cmake_minimum_required(VERSION 3.13.4)

# Enable generation of compile_commands.json files
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE CACHE INTERNAL "")

#project(TEC2)

add_executable(${PROJECT_NAME} main.cpp)

target_link_libraries(${PROJECT_NAME} 
  PRIVATE
    TermOx
)

# Copy compile_commands.json files from build folder to source folders
#add_custom_target(copy-compile-commands ALL
#  ${CMAKE_COMMAND} -E copy_if_different
#  ${CMAKE_BINARY_DIR}/compile_commands.json ${CMAKE_CURRENT_LIST_DIR} )
