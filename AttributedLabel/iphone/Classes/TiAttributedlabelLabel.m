/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiAttributedlabelLabel.h"

@interface TiAttributedlabelLabel (Private)

-(void)updateTextViewsHtml;

@end

@implementation TiAttributedlabelLabel

#pragma mark -
#pragma mark View management

-(void)dealloc
{
    RELEASE_TO_NIL(_label);
    [super dealloc];
}

-(UILabel*)label
{
    if (_label==nil)
    {
        _label = [[UILabel alloc] initWithFrame:[self frame]];
        //_label.backgroundColor = [UIColor grayColor];
        //NSString *htmlString = @"Was the PSS compliant with AstraZeneca Policies and Standards during this field ride?<br/>Examples include(Note:This list is not exhaustive):<ul><li>Accurately and thoroughly records all selling and promotional activities through appropriate documentation including expense reports, attendee sign-in sheets, items of value, etc</li><li>Interacts with appropriate personnel (e.g., did not call on blocked/excluded customers)</li><li>Provides fair balance</ul><br/><ul><li>Offers currently-approved PI for each product discussed</li><li>Utilizes only AZAP-approved materials and messages</li><li>Demonstrates accurate and timely Adverse Event reporting</li><li>Conducts a compliant Speaker Program<li>Appropriately utilizes resources such as Professional Information Requests (PIRs) and Virtual Scientific Exchange Center (VSEC)</li></ul>";
//        NSMutableParagraphStyle* paragraph = [[NSMutableParagraphStyle alloc] init];
//        paragraph.alignment = NSTextAlignmentCenter;
//        
//        _label.numberOfLines = 20;
//        _label.attributedText = [[NSAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUTF8StringEncoding] options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding)} documentAttributes:nil error:nil];
        [self addSubview:_label];
    }
    return _label;
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    if (_label!=nil)
    {
        [TiUtils setView:_label positionRect:bounds];
    }
}

-(void)setHtml_:(NSString *)htmlString
{
    NSMutableParagraphStyle* paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.alignment = NSTextAlignmentCenter;
    
    _label.numberOfLines = 20;
    _label.attributedText = [[NSAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUTF8StringEncoding] options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding)} documentAttributes:nil error:nil];
}

-(void)setColor_:(UIColor*)color{
    _label.textColor = color;
}

-(void)createView
{
    [self label];
}

@end
