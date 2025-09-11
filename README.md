# DevOps Class – .NET Fullstack (Code Only)

ASP.NET Core minimal API + static frontend in `wwwroot`. No CI/CD artifacts or extra build scripts.
Your apprentices create the pipeline (restore, build, test, publish/deploy).

## Run locally
- Install .NET 8 SDK
- `dotnet restore`
- `dotnet run --project src/FullstackApp/FullstackApp.csproj`
- Open http://localhost:5000 (or the port shown)

## Test
- `dotnet test`

## What’s inside
- API: `GET /api/hello` returns a simple JSON message via a testable `GreetingService`
- Static client: `wwwroot/index.html` fetches `/api/hello`
- Unit tests: xUnit tests for the service# devops-class-dontnet-fullstack
