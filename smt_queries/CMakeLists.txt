cmake_minimum_required(VERSION 3.20)
project(smt_fault_queries)


find_package(Z3 QUIET)
if(NOT Z3_FOUND)
  # Fall back to pkg-config if find_package fails
  find_package(PkgConfig QUIET)
  if(PkgConfig_FOUND)
    pkg_check_modules(Z3 REQUIRED z3)
  else()
    message(FATAL_ERROR "Z3 not found and pkg-config not available")
  endif()
endif()

add_executable(ineffective_query ineffective/query.cpp)

target_link_libraries(ineffective_query
  PRIVATE
  ${Z3_LIBRARIES}
)

target_include_directories(ineffective_query
  PRIVATE
  ${Z3_INCLUDE_DIRS}
)
