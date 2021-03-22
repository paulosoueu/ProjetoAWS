func @_BancoBari.Repository.AWSRepository.AwsContext.SQSClient$$() -> none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :18 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :22 :16) // Not a variable of known type: sqsClient
%2 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :22 :29) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :22 :16) // comparison of unknown type: sqsClient == null
cond_br %3, ^1, ^2 loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :22 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :24 :29) // new AmazonSQSConfig() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :25 :16) // Not a variable of known type: config
%7 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :25 :16) // config.RegionEndpoint (SimpleMemberAccessExpression)
// Entity from another assembly: Amazon
%8 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :25 :40) // Amazon.RegionEndpoint (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :25 :40) // Amazon.RegionEndpoint.USEast1 (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :26 :16) // Not a variable of known type: config
%11 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :26 :16) // config.Timeout (SimpleMemberAccessExpression)
// Entity from another assembly: TimeSpan
%12 = constant 30 : i32 loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :26 :54)
%13 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :26 :33) // TimeSpan.FromSeconds(30) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :27 :16) // Not a variable of known type: config
%15 = cbde.unknown : i32 loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :27 :16) // config.MaxErrorRetry (SimpleMemberAccessExpression)
%16 = constant 3 : i32 loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :27 :39)
%17 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :28 :50) // Not a variable of known type: _configuration
%18 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :28 :65) // "Amazon:AccessKey" (StringLiteralExpression)
%19 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :28 :50) // _configuration["Amazon:AccessKey"] (ElementAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :29 :22) // Not a variable of known type: _configuration
%21 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :29 :37) // "Amazon:SecretKey" (StringLiteralExpression)
%22 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :29 :22) // _configuration["Amazon:SecretKey"] (ElementAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :28 :26) // new BasicAWSCredentials(_configuration["Amazon:AccessKey"]                      , _configuration["Amazon:SecretKey"]) (ObjectCreationExpression)
%24 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :30 :48) // Not a variable of known type: awsCred
%25 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :30 :57) // Not a variable of known type: config
%26 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :30 :28) // new AmazonSQSClient(awsCred, config) (ObjectCreationExpression)
br ^2

^2: // JumpBlock
%27 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :32 :19) // Not a variable of known type: sqsClient
return %27 : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.Repository\\AWSRepository\\AwsContext.cs" :32 :12)

^3: // ExitBlock
cbde.unreachable

}
