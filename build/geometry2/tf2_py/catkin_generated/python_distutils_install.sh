#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/simoneforno/simon_ws/src/geometry2/tf2_py"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/simoneforno/simon_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/simoneforno/simon_ws/install/lib/python2.7/dist-packages:/home/simoneforno/simon_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/simoneforno/simon_ws/build" \
    "/usr/bin/python" \
    "/home/simoneforno/simon_ws/src/geometry2/tf2_py/setup.py" \
    build --build-base "/home/simoneforno/simon_ws/build/geometry2/tf2_py" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/simoneforno/simon_ws/install" --install-scripts="/home/simoneforno/simon_ws/install/bin"
