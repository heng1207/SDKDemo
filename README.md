iOS自定义SDK
1、SDK创建、使用、调试
2、引用开源库(手动加入第三方)
(1)、include of non-modular header inside framework module
解决：将#import "**.h" 第三方库写在 .m文件中，而不是放在.h文件中即可
(2)、TARGETS -> Build Settings -> Linking -> Other Linker Flage 添加-ObjC标志(在静态库中慎用Category，如果使用了Category就必须在SDK和SDK使用的项目中都要添加该标识，否则会报unrecognizedselector sent to instance的异常）
3、引用开源库(CocoaPod集成)
can't locate file for:  -lPods-MyTestSDK
file: -lPods-MyTestSDK is not an object file (not allowed in a library)
Command Libtool failed with a nonzero exit code 
解决：TARGETS ->General ->  Frameworks and Libraries 中，删除 -libPods-MyTestSDK.a
