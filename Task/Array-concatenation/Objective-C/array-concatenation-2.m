NSArray *arr1 = [NSArray arrayWithObjects:[NSNumber numberWithInt:1],
                                          [NSNumber numberWithInt:2],
                                          [NSNumber numberWithInt:3], nil];
NSArray *arr2 = [NSArray arrayWithObjects:[NSNumber numberWithInt:4],
                                          [NSNumber numberWithInt:5],
                                          [NSNumber numberWithInt:6], nil];
NSMutableArray *arr3 = [NSMutableArray arrayWithArray:arr1];
[arr3 addObjectsFromArray:arr2];
