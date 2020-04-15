iOS自定义SDK
1、SDK创建、使用、调试
2、引用开源库(手动加入第三方)
(1)、include of non-modular header inside framework module
解决：将#import "**.h" 第三方库写在 .m文件中，而不是放在.h文件中即可
