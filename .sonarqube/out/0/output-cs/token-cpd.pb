’
ZC:\Users\poce\Desktop\Bari\Bari\BancoBari\BancoBari.Repository\AWSRepository\AwsContext.cs
	namespace 	
	BancoBari
 
. 

Repository 
. 
AWSRepository ,
{ 
public 

class 

AwsContext 
{		 
private

 
AmazonSQSClient

 
	sqsClient

  )
;

) *
public 

AwsContext 
( 
IConfiguration (
configuration) 6
)6 7
{ 	
_configuration 
= 
configuration *
;* +
} 	
public 
IConfiguration 
_configuration ,
{- .
get/ 2
;2 3
}4 5
public 
AmazonSQSClient 
	SQSClient (
(( )
)) *
{ 	
BasicAWSCredentials 
awsCred  '
;' (
if 
( 
	sqsClient 
== 
null !
)! "
{ 
var 
config 
= 
new  
AmazonSQSConfig! 0
(0 1
)1 2
;2 3
config 
. 
RegionEndpoint %
=& '
Amazon( .
.. /
RegionEndpoint/ =
.= >
USEast1> E
;E F
config 
. 
Timeout 
=  
TimeSpan! )
.) *
FromSeconds* 5
(5 6
$num6 8
)8 9
;9 :
config 
. 
MaxErrorRetry $
=% &
$num' (
;( )
awsCred 
= 
new 
BasicAWSCredentials 1
(1 2
_configuration2 @
[@ A
$strA S
]S T
, 
_configuration $
[$ %
$str% 7
]7 8
)8 9
;9 :
	sqsClient 
= 
new 
AmazonSQSClient  /
(/ 0
awsCred0 7
,7 8
config9 ?
)? @
;@ A
}   
return!! 
	sqsClient!! 
;!! 
}"" 	
}$$ 
}%% Õ
]C:\Users\poce\Desktop\Bari\Bari\BancoBari\BancoBari.Repository\AWSRepository\AWSRepository.cs
	namespace 	
	BancoBari
 
. 

Repository 
. 
AWSRepository ,
{ 
public		 

class		 
AwsRepository		 
:		  
IAwsRepository		! /
{

 
private 

AwsContext 
_context #
{$ %
get& )
;) *
}+ ,
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
private 
readonly 
AmazonSQSClient (
_awsSQSClient) 6
;6 7
public 
AwsRepository 
( 

AwsContext '
context( /
,/ 0
IConfiguration1 ?
configuration@ M
)M N
{ 	
_configuration 
= 
configuration *
;* +
_context 
= 
context 
; 
_awsSQSClient 
= 
_context $
.$ %
	SQSClient% .
(. /
)/ 0
;0 1
} 	
public 
async 
Task 
< "
ReceiveMessageResponse 0
>0 1
GetSqs2 8
(8 9
)9 :
{ 	!
ReceiveMessageRequest !!
receiveMessageRequest" 7
=8 9
new: =!
ReceiveMessageRequest> S
(S T
)T U
;U V!
receiveMessageRequest !
.! "
QueueUrl" *
=+ ,
_configuration- ;
[; <
$str< S
]S T
;T U!
receiveMessageRequest !
.! "
MaxNumberOfMessages" 5
=6 7
$num8 9
;9 :"
ReceiveMessageResponse "
resp# '
=( )
await* /
_awsSQSClient0 =
.= >
ReceiveMessageAsync> Q
(Q R!
receiveMessageRequestR g
)g h
;h i
return 
resp 
; 
} 	
public 
async 
Task 
< 
SendMessageResponse -
>- .
SetSQS/ 5
(5 6
string6 <
dados= B
,B C
intD G
delayH M
=N O
$numP Q
)Q R
{   	
SendMessageRequest!! 
sendRequest!! *
=!!+ ,
new!!- 0
SendMessageRequest!!1 C
(!!C D
)!!D E
;!!E F
sendRequest"" 
."" 
QueueUrl""  
=""! "
_configuration""# 1
[""1 2
$str""2 F
]""F G
;""G H
sendRequest## 
.## 
MessageBody## #
=##$ %
dados##& +
;##+ ,
sendRequest$$ 
.$$ 
DelaySeconds$$ $
=$$% &
delay$$' ,
;$$, -
var%% 
result%% 
=%% 
await%% 
_awsSQSClient%% ,
.%%, -
SendMessageAsync%%- =
(%%= >
sendRequest%%> I
)%%I J
;%%J K
return&& 
result&& 
;&& 
}'' 	
})) 
}** ®
hC:\Users\poce\Desktop\Bari\Bari\BancoBari\BancoBari.Repository\AWSRepository\Interface\IAwsRepository.cs
	namespace 	
	BancoBari
 
. 

Repository 
. 
AWSRepository ,
., -
	Interface- 6
{ 
public 

	interface 
IAwsRepository #
{ 
Task 
< "
ReceiveMessageResponse #
># $
GetSqs% +
(+ ,
), -
;- .
Task		 
<		 
SendMessageResponse		  
>		  !
SetSQS		" (
(		( )
string		) /
dados		0 5
,		5 6
int		7 :
delay		; @
=		A B
$num		C D
)		D E
;		E F
}

 
} š
jC:\Users\poce\Desktop\Bari\Bari\BancoBari\BancoBari.Repository\Repository\Interfaces\IMessageRepository.cs
	namespace 	
	BancoBari
 
. 

Repository 
. 

Repository )
.) *

Interfaces* 4
{ 
public 

	interface 
IMessageRepository '
{ 
Task 
SaveMessage 
( 
string 
message  '
)' (
;( )
Task 
< 
string 
> 

GetMessage 
(  
)  !
;! "
}		 
}

 ù
^C:\Users\poce\Desktop\Bari\Bari\BancoBari\BancoBari.Repository\Repository\MessageRepository.cs
	namespace 	
	BancoBari
 
. 

Repository 
. 

Repository )
{ 
public 

class 
MessageRepository "
:# $
IMessageRepository% 7
{		 
private

 
readonly

 
IAwsRepository

 '
_awsRepository

( 6
;

6 7
public 
MessageRepository  
(  !
IAwsRepository! /
awsRepository0 =
)= >
{ 	
_awsRepository 
= 
awsRepository *
;* +
} 	
public 
async 
Task 
SaveMessage %
(% &
string& ,
message- 4
)4 5
{ 	
await 
_awsRepository  
.  !
SetSQS! '
(' (
message( /
)/ 0
;0 1
} 	
public 
async 
Task 
< 
string  
>  !

GetMessage" ,
(, -
)- .
{ 	
var 
message 
= 
await 
_awsRepository  .
.. /
GetSqs/ 5
(5 6
)6 7
;7 8
return 
message 
. 
Messages #
.# $
FirstOrDefault$ 2
(2 3
)3 4
.4 5
Body5 9
;9 :
} 	
} 
} 