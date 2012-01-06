#import "UIAlertView+UserData.h"
#import <objc/runtime.h>

@implementation UIAlertView (UserData)

@dynamic userData;

- (NSObject *)userData
{
	return objc_getAssociatedObject(self, "userData");
}

- (void)setUserData:(NSObject *)userData
{
	objc_setAssociatedObject(self, "userData", userData, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
