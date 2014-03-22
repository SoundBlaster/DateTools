//
//  DTTimePeriodCollectionTests.m
//  DateToolsExample
//
//  Created by Matthew York on 3/21/14.
//
//

#import <XCTest/XCTest.h>
#import "DTTimePeriodCollection.h"

@interface DTTimePeriodCollectionTests : XCTestCase
@property NSDateFormatter *formatter;
@property DTTimePeriodCollection *controlCollection;
@end

@implementation DTTimePeriodCollectionTests

- (void)setUp
{
    [super setUp];
    
    //Initialize control DTTimePeriodChain
    self.controlCollection = [[DTTimePeriodCollection alloc] init];
    
    //Initialize formatter
    self.formatter = [[NSDateFormatter alloc] init];
    [self.formatter setDateFormat:@"yyyy MM dd HH:mm:ss.SSS"];
    
    //Create test DTTimePeriods that are 1 year long
    DTTimePeriod *firstPeriod = [DTTimePeriod timePeriodWithStartDate:[self.formatter dateFromString:@"2014 11 05 18:15:12.000"] endDate:[self.formatter dateFromString:@"2015 11 05 18:15:12.000"]];
    DTTimePeriod *secondPeriod = [DTTimePeriod timePeriodWithStartDate:[self.formatter dateFromString:@"2015 11 05 18:15:12.000"] endDate:[self.formatter dateFromString:@"2016 11 05 18:15:12.000"]];
    DTTimePeriod *thirdPeriod = [DTTimePeriod timePeriodWithStartDate:[self.formatter dateFromString:@"2016 11 05 18:15:12.000"] endDate:[self.formatter dateFromString:@"2017 11 05 18:15:12.000"]];
    
    //Add test periods
    [self.controlCollection addTimePeriod:firstPeriod];
    [self.controlCollection addTimePeriod:secondPeriod];
    [self.controlCollection addTimePeriod:thirdPeriod];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


#pragma mark - Custom Init / Factory Methods
-(void)testInitsAndFactories{
    DTTimePeriodCollection *initCompareCollection = [[DTTimePeriodCollection alloc] init];
    DTTimePeriodCollection *factoryCompareCollection = [DTTimePeriodCollection collection];
    
    XCTAssertTrue([initCompareCollection isEqualToCollection:factoryCompareCollection considerOrder:YES],  @"%s Failed", __PRETTY_FUNCTION__);
}

#pragma mark - Collection Manipulation
-(void)testAddTimePeriod{
    
}
-(void)testInsertTimePeriod{
    
}
-(void)testRemoveTimePeriodAtIndex{
    
}

#pragma mark - Sorting
-(void)testSortByStartAscending{
    
}
-(void)testSortByStartDescending{
    
}
-(void)testSortByEndAscending{
    
}
-(void)testSortByEndDescending{
    
}
-(void)testSortByDurationAscending{
    
}
-(void)testSortByDurationDescending{
    
}

#pragma mark - Collection Relationship
-(void)testPeriodsInside{
    
}
-(void)testPeriodsIntersectedByDate{
    
}
-(void)testPeriodsIntersectedByPeriod{
    
}
-(void)testPeriodsOverlappedByPeriod{
    
}
-(void)testIsEqualToCollection{
    
}

@end
