cmake_minimum_required(VERSION 3.0)

project(inrange)

add_executable(inrange inrange.cpp)

target_link_libraries(inrange PUBLIC opencv_core opencv_imgproc opencv_highgui opencv_imgcodecs)

target_include_directories(inrange PUBLIC
	                          "${PROJECT_BINARY_DIR}"
				  "/usr/include/opencv4"
							                              )
