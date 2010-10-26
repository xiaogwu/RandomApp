//
//  Foo.m
//  RandomApp
//
//  Created by Xiao G. Wu on 10/25/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Foo.h"


@implementation Foo
- (IBAction)seed:(id)sender {
	// Seed the random number generator with the time
	srandom(time(NULL));
	
	NSLog(@"Seeded random number generator with the time");
	
	[textField setStringValue:@"Generator seeded"];
}

- (IBAction)generate:(id)sender {
	// Generate a number between 1 and 100 inclusive
	int generated;
	generated = (random() % 100) + 1;
	
	NSLog(@"Generated = %d", generated);
	
	// Ask the text field to change what it is displaying
	[textField setIntValue:generated];
}

- (void)awakeFromNib {
	NSCalendarDate *now;
	now = [NSCalendarDate calendarDate];
	[textField setObjectValue:now];
}

@end
