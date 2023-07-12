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

echo_and_run cd "/home/faamt/ros_ugv_ultron/src/rosserial/rosserial_python"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/faamt/ros_ugv_ultron/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/faamt/ros_ugv_ultron/install/lib/python2.7/dist-packages:/home/faamt/ros_ugv_ultron/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/faamt/ros_ugv_ultron/build" \
    "/usr/bin/python2" \
    "/home/faamt/ros_ugv_ultron/src/rosserial/rosserial_python/setup.py" \
     \
    build --build-base "/home/faamt/ros_ugv_ultron/build/rosserial/rosserial_python" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/faamt/ros_ugv_ultron/install" --install-scripts="/home/faamt/ros_ugv_ultron/install/bin"
