
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
COPY src/FullstackApp/FullstackApp.csproj ./FullstackApp/
RUN dotnet restore ./FullstackApp/FullstackApp.csproj
COPY src/FullstackApp/ ./FullstackApp/
RUN dotnet publish ./FullstackApp/FullstackApp.csproj -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .
EXPOSE 5000
ENV ASPNETCORE_URLS=http://+:5000
ENV ASPNETCORE_ENVIRONMENT=Production

ENTRYPOINT ["dotnet", "FullstackApp.dll"]

