execute_process(COMMAND "/home/simoneforno/simon_ws/build/rqt_tf_tree/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/simoneforno/simon_ws/build/rqt_tf_tree/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
