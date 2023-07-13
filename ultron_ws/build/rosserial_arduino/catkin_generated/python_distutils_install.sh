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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ubuntu/ros_ugv_ultron/ultron_ws/src/rosserial_arduino"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ubuntu/ros_ugv_ultron/ultron_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ubuntu/ros_ugv_ultron/ultron_ws/install/lib/python2.7/dist-packages:/home/ubuntu/ros_ugv_ultron/ultron_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ubuntu/ros_ugv_ultron/ultron_ws/build" \
    "/usr/bin/python2" \
    "/home/ubuntu/ros_ugv_ultron/ultron_ws/src/rosserial_arduino/setup.py" \
     \
    build --build-base "/home/ubuntu/ros_ugv_ultron/ultron_ws/build/rosserial_arduino" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ubuntu/ros_ugv_ultron/ultron_ws/install" --install-scripts="/home/ubuntu/ros_ugv_ultron/ultron_ws/install/bin"
