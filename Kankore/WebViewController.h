//
//  WebViewController.h
//  Kankore
//
//  Created by 鎌倉 正也 on 2013/09/01.
//  Copyright (c) 2013年 Masaya Kamakua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate> {
    NSString* pageTag;
@private UIWebView* webView_;
}

@property NSString* pageTag;

@end
