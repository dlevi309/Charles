#import <Foundation/Foundation.h>

%hook FBSApplicationInfo
- (NSDictionary *)environmentVariables {
    NSDictionary *originalVariables = %orig;
    NSMutableDictionary *newVariables = [originalVariables mutableCopy];
    [newVariables setObject:@3 forKey:@"CFNETWORK_DIAGNOSTICS"];
    return [newVariables autorelease];
}
%end
