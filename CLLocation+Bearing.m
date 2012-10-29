//
//  CLLocation+Bearing.m
//
//

#import "CLLocation+Bearing.h"

@implementation CLLocation (CLLocationExtensions)

+ (CLLocationDegrees) bearingFromCoordinate:(CLLocationCoordinate2D) fromCoordinate toCoordinate:(CLLocationCoordinate2D) toCoordinate;
{    
    double lat1 = fromCoordinate.latitude * (M_PI/180.0);
    double lon1 = fromCoordinate.longitude * (M_PI/180.0);
    
    double lat2 = toCoordinate.latitude * (M_PI/180.0);
    double lon2 = toCoordinate.longitude * (M_PI/180.0);
    
    double dlon = lon2 - lon1;
    
    CLLocationDirection bearing = atan2(sin(dlon) * cos(lat2),
                                        cos(lat1)*sin(lat2) - sin(lat1)*cos(lat2)*cos(dlon));
    
    bearing = bearing*(180.0/M_PI);
    
    if(bearing < 0.0) bearing += 360.0;
    
    return bearing;
}

@end

