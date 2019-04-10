//
//  BlockDefinition.h
//  物联宝管家
//
//  Created by yang on 2019/3/18.
//  Copyright © 2019 wuheGJ. All rights reserved.
//

#ifndef BlockDefinition_h
#define BlockDefinition_h
#import "EnumerationDefinition.h"

#define BackColor HexRGB(0x23262A)

/**
 *  网络请求完成后调用的Block
 *
 *  @param data     data 处理后数据回传
 *  @param response response 返回响应对象
 *  @param error    error 处理过程中发生的错误信息
 */
typedef void (^TaskCompleteBlock)(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error);

/**
 *  命令执行结果完成后返回结果
 *
 *  @param data       data 处理后数据回传
 *  @param resultCode resultCode 处理成功或失败码
 *  @param Error      Error 处理过程中发生的错误信息
 */
typedef void (^CommandCompleteBlock)(id  _Nullable data,ResultCode resultCode,NSError * _Nullable Error);

/**
 *  命令执行结果完成后更新Views
 *
 *  @param data  data 处理后数据回传
 *  @param resultCode resultCode 处理成功或失败码
 */
typedef void (^UpDateViewsBlock)(id  _Nullable data,ResultCode resultCode);

/**
 *  视图事件回调
 *
 *  @param data  data 回传数据
 *  @param view  view 处发事件iew
 *  @param index index 处发事件索引或列表索引
 */
typedef void (^ViewsEventBlock)(id _Nullable data,UIView *_Nullable view,NSInteger index);

/**
 *  列表视图事件回调
 *
 *  @param data     data 回传数据
 *  @param view  view 处发事件iew
 *  @param index index 处发事件索引或列表索引
 */
typedef void (^CellEventBlock)(id _Nullable data,UIView *_Nullable view,NSIndexPath *_Nullable index);

/**
 *  @param data     data 处理后数据回传
 *  @param bluetoothCode    bluetoothCode 处理事件码
 */


typedef void (^AlertBlock)(NSInteger index);

/*YTKNetwork请求使用的block*/

//@class PABaseRequest;
//@class PABaseResponseModel;
//
//typedef void(^requestSuccessBlock)(PABaseResponseModel *   _Nullable responseModel, PABaseRequest * _Nullable request);
//typedef void(^requestFailedBlock)(NSError * _Nullable error, PABaseRequest * _Nullable request);


#endif /* BlockDefinition_h */
