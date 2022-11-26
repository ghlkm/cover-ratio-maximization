cmake_minimum_required(VERSION 3.12)
project(test_cgal)

set(CMAKE_CXX_STANDARD 17)

find_package (Eigen3 3.3 REQUIRED NO_MODULE)

find_package(CGAL REQUIRED)

if (Eigen3_FOUND)

else()
    message(STATUS "This program requires the Eigen3_FOUND library, and will not be compiled.")
endif ()
if ( CGAL_FOUND )

    include( ${CGAL_USE_FILE} )

    # include( CGAL_CreateSingleSourceCGALProgram )

    include_directories (BEFORE "/home/keming/CGAL-4.7/include")

    # create_single_source_cgal_program( "main.cpp" )

else()

    message(STATUS "This program requires the CGAL library, and will not be compiled.")

endif()
add_executable(test_cgal main.cpp triangulation1.cpp triangulation2.cpp triangulation1.hpp)
target_link_libraries (test_cgal Eigen3::Eigen)
target_link_libraries (test_cgal ${CGAL_LIBS})

