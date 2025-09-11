using Xunit;
using FullstackApp.Services;

public class GreetingServiceTests
{
    [Fact]
    public void ReturnsGreetingWithName()
    {
        var svc = new GreetingService();
        var result = svc.GetGreeting("World");
        Assert.Contains("World", result);
    }
}