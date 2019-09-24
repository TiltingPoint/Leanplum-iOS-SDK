//
//  EmbeddedHTMLUrlCallback.m
//  LeanplumSDK-iOS
//
//  Created by Santiago Castañeda Muñoz on 9/24/19.
//  Copyright © 2019 Tilting Point - Leanplum. All rights reserved.
//

#import "EmbeddedHTMLUrlCallback.h"

@interface EmbeddedHTMLUrlCallback()

@property (nonatomic, copy) LeanplumEmbeddedHTMLUrlCallbackBlock callback;

@end

@implementation EmbeddedHTMLUrlCallback

- (id)initWithCallback:(LeanplumEmbeddedHTMLUrlCallbackBlock)callback
{
    if(self = [super init]){
        _callback = callback;
    }
    return self;
}

- (BOOL)onEmbeddedUrl:(NSString *)url
{
    if(_callback(url))
    {
        return YES;
    }
    
    return NO;
}
@end
