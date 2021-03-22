using Amazon.SQS.Model;
using BancoBari.Repository.AWSRepository;
using BancoBari.Services.Services;
using BancoBari.Services.Services.Interfaces;
using Moq;
using Moq.AutoMock;
using System.Threading.Tasks;
using Xunit;

namespace BancoBari.Tests.Services
{
    public class MessageServiceTests
    {
        private readonly AutoMocker _autoMocker;
        private readonly IMessageService _service;

        public MessageServiceTests()
        {
            _autoMocker = new AutoMocker();
            _service = _autoMocker.CreateInstance<MessageService>();
            //Setup();
        }

        private void Setup()
        {
            _autoMocker.GetMock<AwsRepository>().Setup(x => x.GetSqs()).ReturnsAsync(new ReceiveMessageResponse());
        }

        [Fact]
        public async Task Teste1()
        {
            await _service.ProcessarMensagem();
            Assert.True(true);
        }
    }
}
