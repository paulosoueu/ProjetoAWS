œ

TC:\Users\poce\Desktop\Bari\Bari\BancoBari\BancoBari.Services\Models\MensagemModel.cs
	namespace 	
	BancoBari
 
. 
Services 
. 
Models #
{ 
public 

class 
MensagemModel 
{ 
public 
string 
mensagem 
{  
get! $
{% &
return' -
$str. ;
;; <
}= >
}? @
public 
string 
id 
{ 
get 
{  
return! '
$str( ;
;; <
}= >
}? @
public		 
DateTime		 
	timeStamp		 !
{		" #
get		$ '
{		( )
return		* 0
DateTime		1 9
.		9 :
Now		: =
;		= >
}		? @
}		A B
public

 
string

 
idRequisicao

 "
{

# $
get

% (
{

) *
return

+ 1
new

2 5
Random

6 <
(

< =
)

= >
.

> ?
Next

? C
(

C D
)

D E
.

E F
ToString

F N
(

N O
)

O P
;

P Q
}

R S
}

T U
} 
} à
cC:\Users\poce\Desktop\Bari\Bari\BancoBari\BancoBari.Services\Services\Interfaces\IMessageService.cs
	namespace 	
	BancoBari
 
. 
Services 
. 
Services %
.% &

Interfaces& 0
{ 
public 

	interface 
IMessageService $
{ 
Task 
ProcessarMensagem 
( 
)  
;  !
} 
}		 Ó
WC:\Users\poce\Desktop\Bari\Bari\BancoBari\BancoBari.Services\Services\MessageService.cs
	namespace		 	
	BancoBari		
 
.		 
Services		 
.		 
Services		 %
{

 
public 

class 
MessageService 
:  !
IMessageService" 1
{ 
private 
readonly 
IMessageRepository +
_repository, 7
;7 8
private 
readonly 
ILogger  
_logger! (
;( )
public 
MessageService 
( 
IMessageRepository 0

repository1 ;
,; <
ILogger= D
loggerE K
)K L
{ 	
_repository 
= 

repository $
;$ %
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
ProcessarMensagem +
(+ ,
), -
{ 	
var 
message 
= 
new 
MensagemModel +
(+ ,
), -
;- .
var 
json 
= 
JsonConvert "
." #
SerializeObject# 2
(2 3
message3 :
): ;
;; <
_logger 
. 
Information 
(  
$str  =
)= >
;> ?
await 
_repository 
. 
SaveMessage )
() *
json* .
). /
;/ 0
await 
Task 
. 
Run 
( 
( 
) 
=>  
Console! (
.( )
	WriteLine) 2
(2 3
json3 7
)7 8
)8 9
;9 :
_logger   
.   
Information   
(    
$str    F
)  F G
;  G H
var!! 

messageAws!! 
=!! 
await!! "
GetMessageSQS!!# 0
(!!0 1
)!!1 2
;!!2 3
if"" 
("" 
!"" 
string"" 
."" 
IsNullOrEmpty"" %
(""% &

messageAws""& 0
)""0 1
)""1 2
{## 
await$$ 
Task$$ 
.$$ 
Run$$ 
($$ 
($$  
)$$  !
=>$$" $
Console$$% ,
.$$, -
	WriteLine$$- 6
($$6 7

messageAws$$7 A
)$$A B
)$$B C
;$$C D
}%% 
}&& 	
private(( 
async(( 
Task(( 
<(( 
string(( !
>((! "
GetMessageSQS((# 0
(((0 1
)((1 2
{)) 	
var** 
retorno** 
=** 
await** 
_repository**  +
.**+ ,

GetMessage**, 6
(**6 7
)**7 8
;**8 9
return++ 
retorno++ 
;++ 
},, 	
}-- 
}.. 