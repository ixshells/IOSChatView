//
//  MessageNode.h
//  IOSChatView
//
//  Created by ixshells on 16/4/6.
//  Copyright © 2016年 ixshells. All rights reserved.
//

#ifndef MessageNode_h
#define MessageNode_h

#import <UIKit/UIKit.h>

@interface BaseMessageNode : NSObject

@property(nonatomic, readonly)UIView* cacheView;

-(void)drawCacheView;

-(void)drawToView : (UIView *)view;

@end

//包含发送的消息和收到对方的消息
@interface ContentNode : BaseMessageNode

@property(nonatomic)UIImageView* headerView;

@property(nonatomic)UIView* contentView;

@property(nonatomic)UIImageView* bubbleView;


@end

//系统消息等等
@interface NotContentNode : BaseMessageNode

@end

//Content node 子消息
@interface TextNode : ContentNode
@property(nonatomic, strong)NSString* text;

@end

#endif /* MessageNode_h */
