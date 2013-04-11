#import <Foundation/Foundation.h>

@interface AnonymousRecursion : NSObject { }
- (NSNumber *)fibonacci:(NSNumber *)n;
@end

@implementation AnonymousRecursion
- (NSNumber *)fibonacci:(NSNumber *)n {
  int i = [n intValue];
  if (i < 0)
    @throw [NSException exceptionWithName:NSInvalidArgumentException
                                 reason:@"fibonacci: no negative numbers"
                               userInfo:nil];
  int result;
  if (i < 2)
    result = 1;
  else
    result = [[self performSelector:_cmd withObject:[NSNumber numberWithInt:i-1]] intValue]
           + [[self performSelector:_cmd withObject:[NSNumber numberWithInt:i-2]] intValue];
  return [NSNumber numberWithInt:result];
}
@end

int main (int argc, const char *argv[]) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  AnonymousRecursion *dummy = [[AnonymousRecursion alloc] init];
  NSLog(@"%@", [dummy fibonacci:[NSNumber numberWithInt:8]]);
  [dummy release];

  [pool release];
  return 0;
}
