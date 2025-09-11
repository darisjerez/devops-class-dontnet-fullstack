using FullstackApp.Services;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddSingleton<GreetingService>();

var app = builder.Build();
app.UseDefaultFiles();
app.UseStaticFiles();

app.MapGet("/api/hello", (GreetingService svc) => new { message = svc.GetGreeting("DevOps") });

app.Run();