func @_BancoBari.Startup.ConfigureServices$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> () loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari\\Startup.cs" :24 :8) {
^entry (%_services : none):
%0 = cbde.alloca none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari\\Startup.cs" :24 :38)
cbde.store %_services, %0 : memref<none> loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari\\Startup.cs" :24 :38)
br ^0

^0: // SimpleBlock
// Entity from another assembly: IoC
%1 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari\\Startup.cs" :26 :30) // Not a variable of known type: services
%2 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari\\Startup.cs" :26 :12) // IoC.ApplyServices(services) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Configure(none, none), it contains poisonous unsupported syntaxes

