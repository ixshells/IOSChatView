//
//  MessageNode.m
//  IOSChatView
//
//  Created by ixshells on 16/4/6.
//  Copyright © 2016年 ixshells. All rights reserved.
//

#import "MessageNode.h"
#import "UIView+NSLayoutConstraint.h"

//header width height
const static float headerWidth = 40.0f;
const static float headerHeight = 40.0f;


static const CGFloat leftMargin = 30/2.;
static const CGFloat rightMargin = 30/2.;

static const CGFloat gapWidth = 20/2.;


static const CGFloat leftBubbleToRightMargin = 130/2.;
static const CGFloat rightBubbleToLeftMargin = 130/2.;

//static const CGFloat headViewHeight = 80/2.0;
static const CGFloat headViewWidth = 80/2.0;

static const UIEdgeInsets leftBubbleResizeInsets = {41/2., 21/2., 9/2., 9/2.};
static const UIEdgeInsets rightBubbleResizeInsets = {41/2., 9/2., 9/2., 21/2.};

#define backgrdColor [UIUtils colorWithF5F7FA]
#define rightBubbleColor [UIColor colorWithHex:0x5587e5]
#define leftBubbleColor [UIColor whiteColor]

#pragma mark BaseMessageNode
@implementation BaseMessageNode
-(void)drawCacheView
{
    if(nil == _cacheView)
    {
        _cacheView = [[UIView alloc] init];
        _cacheView.translatesAutoresizingMaskIntoConstraints = NO;
        _cacheView.backgroundColor = colorWithHex(0xF5F7FA);
    }
}


-(void)drawToView : (UIView *)view
{
    if(nil == view)
        return;
    
    if(nil == _cacheView)
    {
        [self drawCacheView];
    }
    
    [view addSubview:self.cacheView];
    
    [self.cacheView leadingToSuperView];
    [self.cacheView trailingToSuperView];
    [self.cacheView topToSuperView];
    [self.cacheView bottomToSuperView];
}


@end

#pragma mark ContentNode
@implementation ContentNode

-(UIImageView *)headerView
{
    if(nil == _headerView)
    {
        _headerView = [[UIImageView alloc]init];
        _headerView.translatesAutoresizingMaskIntoConstraints = NO;
        _headerView.image = [UIImage imageNamed:@"gn.jpg"];
        [self.cacheView addSubview:_headerView];
        [_headerView topToSuperView];
        [_headerView leadingToSuperView:15.0f];
        [_headerView widthEqualTo:headerWidth];
        [_headerView heightEqualTo:headerHeight];
        _headerView.layer.borderWidth = 1.0/[UIScreen mainScreen].scale;
        _headerView.layer.borderColor = [UIColor colorWithWhite:0 alpha:0.1].CGColor;
        _headerView.layer.cornerRadius = headerWidth/2.;
        _headerView.layer.masksToBounds = YES;
    }
    return _headerView;
}

-(UIView *)contentView
{
    if(nil == _contentView)
    {
        _contentView = [[UIView alloc] init];
        [self.cacheView addSubview:_contentView];
        _contentView.translatesAutoresizingMaskIntoConstraints = NO;
        _contentView.backgroundColor = [UIColor cyanColor];
        [_contentView topToSuperView];
        [_contentView bottomToSuperView:20.0f];
        [_contentView trailingToSuperViewMoreThan:leftBubbleToRightMargin];
        [_contentView leadingToSuperView:gapWidth+headViewWidth+leftMargin];
    }
    return _contentView;
}

-(UIImageView *)bubbleView
{
    if(nil == _bubbleView)
    {
        _bubbleView = [[UIImageView alloc]init];
        _bubbleView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:_bubbleView];
        [_bubbleView leadingToSuperView];
        [_bubbleView trailingToSuperView];
        [_bubbleView topToSuperView];
        [_bubbleView bottomToSuperView];
        _bubbleView.userInteractionEnabled = YES;

    }
    return _bubbleView;
}

-(void)drawCacheView
{
    [super drawCacheView];
    [self headerView];
    [self contentView];
    [self bubbleView];
}

-(void)drawLeftDirection {
    [self.headerView leadingToSuperView:200];
    [self.contentView trailingToSuperViewMoreThan:leftBubbleToRightMargin];
    [self.contentView leadingToSuperView:gapWidth+headViewWidth+leftMargin];
    
    UIImage* oriImg = [UIImage imageNamed:@"chat_bubble_pic_left.png"];
    UIImage* resizImg = [oriImg resizableImageWithCapInsets:leftBubbleResizeInsets];
    self.bubbleView.image = resizImg;

}

-(void)drawRightDirection {
    [self.headerView trailingToSuperView:rightMargin];
    [self.contentView leadingToSuperViewMoreThan:rightBubbleToLeftMargin];
    [self.contentView trailingToSuperView:gapWidth+headViewWidth+rightMargin];
    
    UIImage* oriImg = [UIImage imageNamed:@"chat_bubble_pic_right.png"];
    UIImage* resizImg = [oriImg resizableImageWithCapInsets:rightBubbleResizeInsets];
    self.bubbleView.image = resizImg;

}

@end

#pragma mark TextNode

@interface TextNode()
@property(nonatomic, strong)UILabel* textLabel;

@end
@implementation TextNode

-(UILabel *)textLabel
{
    if(nil == _textLabel){
        _textLabel = [[UILabel alloc]init];
        _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
        
    }
    return _textLabel;
}

-(void)drawCacheView
{
    [super drawCacheView];
    
    [self.contentView addSubview:self.textLabel];
    [self.textLabel topToSuperView:28/2.];
    [self.textLabel bottomToSuperView:28/2.];
    self.textLabel.numberOfLines = 0;
    self.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.textLabel.textAlignment = NSTextAlignmentLeft;
    self.textLabel.font = [UIFont systemFontOfSize:15.0f];
    [self drawLeftDirection];
    
}

-(void)drawLeftDirection {
    [super drawLeftDirection];
    
    [self.textLabel leadingToSuperView:39/2.];
    [self.textLabel trailingToSuperView:24/2.];
}

-(void)drawRightDirection {
    [super drawRightDirection];
    
    [self.textLabel leadingToSuperView:24/2.];
    [self.textLabel trailingToSuperView:39/2.];
    self.textLabel.textColor = [UIColor whiteColor];
//    self.contentView.backgroundColor = colorWithHex(0x5587e5);
}

-(void)setText:(NSString *)text {
    self.textLabel.text = text;
}

-(NSString*)text {
    return self.textLabel.text;
}


@end