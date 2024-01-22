cmake_minimum_required(VERSION 3.5)

project(iras_interfaces)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

set(THIS_PACKAGE_INCLUDE_DEPENDS
  geometry_msgs
  moveit_msgs
  shape_msgs
  rosidl_default_generators
)

find_package(ament_cmake REQUIRED)
foreach(Dependency IN ITEMS ${THIS_PACKAGE_INCLUDE_DEPENDS})
  find_package(${Dependency} REQUIRED)
endforeach()

set(srv_files
  "srv/MoveToPose.srv"
  "srv/MoveToPoseSeq.srv"
  "srv/MoveToJointPosition.srv"
  "srv/AttachDetachObject.srv"
  "srv/AddObjects.srv"
  "srv/RemoveObject.srv"
  "srv/SetScalingFactor.srv"
  "srv/LoadPlan.srv"
)
rosidl_generate_interfaces(${PROJECT_NAME}
  ${srv_files}
  DEPENDENCIES geometry_msgs moveit_msgs shape_msgs
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
