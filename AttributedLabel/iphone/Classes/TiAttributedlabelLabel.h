/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiUIView.h"

@interface TiAttributedlabelLabel : TiUIView {
    UILabel *_label;
    NSString *_html;
}

-(void)setHtml_:(NSString *)htmlString;
-(void)setColor_:(UIColor*)color;
-(void)createView;
@end
