//Matt's example code for detecting when objects are in a certain HSV range
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>

#include <vector>
using std::vector;
#include <algorithm>
using std::sort;
#include <string>
using std::string;
using std::to_string;
#include <iostream>
using std::clog;
using std::endl;
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

//global variables

string image_path;
const int redMax = 255;
int redMaxSlider = 255;
int redMinSlider = 0;


const int blueMax = 255;
int blueMaxSlider = 255;
int blueMinSlider = 0;


const int greenMax = 255;
int greenMaxSlider = 255;
int greenMinSlider = 0;

Mat input;


typedef vector<Point> Polygon;
typedef vector<Polygon> Polygons;

static void ColorFilter(int, void*)
{
    Mat Filtered;
    inRange(input, Scalar(redMinSlider, greenMinSlider, blueMinSlider), Scalar(redMaxSlider, greenMaxSlider, blueMaxSlider), Filtered);

    imshow("Red Only", Filtered);

    //now, find the shapes in the image and draw boxes around each

    /*
    Polygons contours;
    Polygons aContours;
    Polygons hulls;
    OutputArray hierarchy = {};

    findContours(Filtered, contours, hierarchy, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);
    clog << contours.size() << " contours found" << endl;
    sort(contours.begin(), contours.end(), [](auto p1, auto p2) {
        return contourArea(p1) > contourArea(p2);
        });
    clog << "contours sorted" << endl;
    aContours.resize(contours.size());
    hulls.resize(contours.size());
    for (size_t i = 0; i < aContours.size() - 1; ++i) {
        approxPolyDP(contours[i], aContours[i], 20, true);
        drawContours(Filtered, aContours, i, Scalar(0,0,255), 10);
        convexHull(aContours[i], hulls[i], true);
    }

    try {
        for (size_t i = 0; i < 3; ++i) {
            drawContours(Filtered, hulls, i, Scalar(0, 0, 255), 10);
        }
    }
    catch (Exception e) {
        //do nothing
        cout << "Caught Exception";
    }

    imshow("out", Filtered);*/
}

int main(int argc, char** argv)
{
    string basePath = "D:/Program Files/OpenCV/TestImages/";
    image_path = basePath + "colourful-shape-icons.jpg";

    input = imread(image_path);

    resize(input, input, cv::Size(500,500));

    imshow("input", input);

    waitKey();

    namedWindow("Red Only", WINDOW_AUTOSIZE);

    createTrackbar("Value 1 Max", "Red Only", &redMaxSlider, redMax, ColorFilter);

    createTrackbar("Value 1 Min", "Red Only", &redMinSlider, redMax, ColorFilter);

    createTrackbar("Value 2 Max", "Red Only", &greenMaxSlider, redMax, ColorFilter);

    createTrackbar("Value 2 Min", "Red Only", &greenMinSlider, redMax, ColorFilter);

    createTrackbar("Value 3 Max", "Red Only", &blueMaxSlider, redMax, ColorFilter);

    createTrackbar("Value 3 Min", "Red Only", &blueMinSlider, redMax, ColorFilter);

    ColorFilter(redMaxSlider, 0);
    /*ColorFilter(greenMaxSlider, 0);
    ColorFilter(blueMaxSlider, 0);
    ColorFilter(redMinSlider, 0);
    ColorFilter(greenMinSlider, 0);
    ColorFilter(blueMinSlider, 0);*/

    waitKey();

    // detect squares after filtering...

    return 0;
}
