Ê
RC:\Users\poce\Desktop\Bari\Bari\BancoBari\BancoBari.IoC\DependencyInjection\IoC.cs
	namespace

 	
	BancoBari


 
.

 
CrossCutting

  
.

  !
DependencyInjection

! 4
{ 
public 

static 
class 
IoC 
{ 
public 
static 
void 
ApplyServices (
(( )
IServiceCollection) ;
services< D
)D E
{ 	
services 
. 
	AddScoped 
< 
IMessageService .
,. /
MessageService0 >
>> ?
(? @
)@ A
;A B
services 
. 
	AddScoped 
< 
IMessageRepository 1
,1 2
MessageRepository3 D
>D E
(E F
)F G
;G H
services 
. 
	AddScoped 
< 
IAwsRepository -
,- .
AwsRepository/ <
>< =
(= >
)> ?
;? @
services 
. 
AddSingleton !
<! "

AwsContext" ,
>, -
(- .
). /
;/ 0
SerilogApplyService 
(  
services  (
)( )
;) *
} 	
private 
static 
void 
SerilogApplyService /
(/ 0
IServiceCollection0 B
servicesC K
)K L
{ 	
Log 
. 
Logger 
= 
new 
LoggerConfiguration 0
(0 1
)1 2
. 
MinimumLevel 
. 
Verbose %
(% &
)& '
. 
WriteTo 
. 
File 
( 
$str '
,' (
rollingInterval) 8
:8 9
RollingInterval: I
.I J
DayJ M
)M N
. 
CreateLogger 
( 
) 
;  
services   
.   
AddSingleton   !
(  ! "
Log  " %
.  % &
Logger  & ,
)  , -
;  - .
}!! 	
}"" 
}## 