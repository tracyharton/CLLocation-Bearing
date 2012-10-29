//
//  CLLocation+Bearing.h
//
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CLLocation.h>

@interface CLLocation (CLLocationExtensions)

+ (CLLocationDegrees) bearingFromCoordinate:(CLLocationCoordinate2D) fromCoordinate toCoordinate:(CLLocationCoordinate2D) toCoordinate;

@end


