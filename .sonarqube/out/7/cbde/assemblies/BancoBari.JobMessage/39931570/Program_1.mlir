func @_BancoBari.JobMessage.Program.Main$string$$$(none) -> () loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.JobMessage\\Program.cs" :8 :8) {
^entry (%_args : none):
%0 = cbde.alloca none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.JobMessage\\Program.cs" :8 :32)
cbde.store %_args, %0 : memref<none> loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.JobMessage\\Program.cs" :8 :32)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CreateWebHostBuilder
%1 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.JobMessage\\Program.cs" :10 :33) // Not a variable of known type: args
%2 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.JobMessage\\Program.cs" :10 :12) // CreateWebHostBuilder(args) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\poce\\Desktop\\Bari\\Bari\\BancoBari\\BancoBari.JobMessage\\Program.cs" :10 :12) // CreateWebHostBuilder(args).Run() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
