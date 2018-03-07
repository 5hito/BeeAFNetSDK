//
//  BeeDownloader.h
//  BeeMobSDK
//
//  Created by 林述灿 on 2017/7/4.
//  Copyright © 2017年 reactTest. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BeeDownloader : NSObject

+ (instancetype)defaultInstance;

- (instancetype)initWithTimeout:(NSInteger)timeout;
- (void)downloadImageForURLRequest:(NSURLRequest *)request
                           success:(void (^)(NSURLRequest *, NSHTTPURLResponse *, UIImage *))success
                           failure:(void (^)(NSURLRequest *, NSHTTPURLResponse *, NSError *))failure;
@end
