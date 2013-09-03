//
//  WebViewController.m
//  Kankore
//
//  Created by 鎌倉 正也 on 2013/09/01.
//  Copyright (c) 2013年 Masaya Kamakua. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController
@synthesize pageTag;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = pageTag;
    _webView = [[UIWebView alloc] init];
    _webView.delegate = self;
    _webView.frame = self.view.bounds;
    _webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _webView.scalesPageToFit = YES;
    [self.view addSubview:_webView];
}

- (void) loadHTMLFile:(NSString*) path {
    NSArray* components = [path pathComponents];
    NSString* resourceName = [components lastObject];
    NSString* absolutePath;
    NSBundle *mainBundle = [NSBundle mainBundle];
    if(absolutePath = [mainBundle pathForResource:resourceName ofType:nil]) {
        NSData* data = [NSData dataWithContentsOfFile:absolutePath];
        [_webView loadData:data MIMEType:@"text/html" textEncodingName:@"utf-8" baseURL:[NSURL fileURLWithPath:[mainBundle bundlePath]]];
    } else {
        NSLog(@"%@ not found", resourceName);
    }
}

- (BOOL)webView:(UIWebView*)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return TRUE;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if([pageTag isEqualToString:@"駆逐艦"]) {
        
        [self loadHTMLFile:@"kuchikukan.html"];
    
    } else if([pageTag isEqualToString:@"軽巡洋艦"]){
    
        [self loadHTMLFile:@"keijunyoukan.html"];
    
    } else if([pageTag isEqualToString:@"重巡洋艦"]) {
    
        [self loadHTMLFile:@"jujunyoukan.html"];
    
    } else if([pageTag isEqualToString:@"戦艦"]) {
    
        [self loadHTMLFile:@"senkan.html"];
    
    } else if([pageTag isEqualToString:@"空母"]) {
    
        [self loadHTMLFile:@"kubo.html"];
    
    } else if([pageTag isEqualToString:@"艦載機"]) {

        [self loadHTMLFile:@"kansaiki.html"];
        
    } else if([pageTag isEqualToString:@"機銃・砲・砲弾"]) {
        
        [self loadHTMLFile:@"kiju.html"];
        
    } else if([pageTag isEqualToString:@"音探・爆雷"]) {
        
        [self loadHTMLFile:@"ototan.html"];
        
    } else if([pageTag isEqualToString:@"電探"]) {
        
        [self loadHTMLFile:@"dentan.html"];
        
    } else if([pageTag isEqualToString:@"機関"]) {
        
        [self loadHTMLFile:@"kikan.html"];
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
