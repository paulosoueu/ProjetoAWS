func @_BancoBari.CrossCutting.DependencyInjection.IoC.ApplyServices$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> () loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :13 :8) {
^entry (%_services : none):
%0 = cbde.alloca none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :13 :41)
cbde.store %_services, %0 : memref<none> loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :13 :41)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :15 :12) // Not a variable of known type: services
%2 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :15 :12) // services.AddScoped<IMessageService, MessageService>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :16 :12) // Not a variable of known type: services
%4 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :16 :12) // services.AddScoped<IMessageRepository, MessageRepository>() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :17 :12) // Not a variable of known type: services
%6 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :17 :12) // services.AddScoped<IAwsRepository, AwsRepository>() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :19 :12) // Not a variable of known type: services
%8 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :19 :12) // services.AddSingleton<AwsContext>() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SerilogApplyService
%9 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :21 :32) // Not a variable of known type: services
%10 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :21 :12) // SerilogApplyService(services) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BancoBari.CrossCutting.DependencyInjection.IoC.SerilogApplyService$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> () loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :24 :8) {
^entry (%_services : none):
%0 = cbde.alloca none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :24 :48)
cbde.store %_services, %0 : memref<none> loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :24 :48)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Log
%1 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :26 :12) // Log.Logger (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :26 :25) // new LoggerConfiguration() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :26 :25) // new LoggerConfiguration()                  .MinimumLevel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :26 :25) // new LoggerConfiguration()                  .MinimumLevel.Verbose() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :26 :25) // new LoggerConfiguration()                  .MinimumLevel.Verbose()                  .WriteTo (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :28 :30) // "log.txt" (StringLiteralExpression)
// Entity from another assembly: RollingInterval
%7 = constant unit loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :28 :58) // RollingInterval.Day (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :26 :25) // new LoggerConfiguration()                  .MinimumLevel.Verbose()                  .WriteTo.File("log.txt", rollingInterval: RollingInterval.Day) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :26 :25) // new LoggerConfiguration()                  .MinimumLevel.Verbose()                  .WriteTo.File("log.txt", rollingInterval: RollingInterval.Day)                  .CreateLogger() (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :31 :12) // Not a variable of known type: services
// Entity from another assembly: Log
%11 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :31 :34) // Log.Logger (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.IoC\\DependencyInjection\\IoC.cs" :31 :12) // services.AddSingleton(Log.Logger) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
