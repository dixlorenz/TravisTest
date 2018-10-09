//
//  UnitTests.m
//  UnitTests
//
//  Created by Dix Lorenz on 09.10.18.
//  Copyright © 2018 Dix Lorenz. All rights reserved.
//

#import <XCTest/XCTest.h>

#include <boost/optional.hpp>
#include <boost/filesystem.hpp>

@interface UnitTests : XCTestCase

@end

@implementation UnitTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testOptional {
   boost::optional<int> i;
   XCTAssert(!i);
   i = 4;
   XCTAssert(i);
}

- (void)testFilesystem {
   using namespace boost::filesystem;

   auto do_something = [](auto x) {};

   path p = current_path();
   if (is_directory(p))
      {
        for (directory_entry& x : directory_iterator(p))
         do_something(x);
      }
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
