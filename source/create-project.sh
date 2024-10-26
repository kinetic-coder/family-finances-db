# Create solution
dotnet new sln -n kinetic-coder.personalfinance.app

# Create projects
dotnet new webapi -n kinetic-coder.personalfinance.app.API
dotnet new classlib -n kinetic-coder.personalfinance.app.Application
dotnet new classlib -n kinetic-coder.personalfinance.app.Domain
dotnet new classlib -n kinetic-coder.personalfinance.app.Infrastructure
dotnet new xunit -n kinetic-coder.personalfinance.app.Tests

# Add projects to solution
dotnet sln add kinetic-coder.personalfinance.app.API/kinetic-coder.personalfinance.app.API.csproj
dotnet sln add kinetic-coder.personalfinance.app.Application/kinetic-coder.personalfinance.app.Application.csproj
dotnet sln add kinetic-coder.personalfinance.app.Domain/kinetic-coder.personalfinance.app.Domain.csproj
dotnet sln add kinetic-coder.personalfinance.app.Infrastructure/kinetic-coder.personalfinance.app.Infrastructure.csproj
dotnet sln add kinetic-coder.personalfinance.app.Tests/kinetic-coder.personalfinance.app.Tests.csproj

# Set up dependencies
dotnet add kinetic-coder.personalfinance.app.API/kinetic-coder.personalfinance.app.API.csproj reference kinetic-coder.personalfinance.app.Application/kinetic-coder.personalfinance.app.Application.csproj
dotnet add kinetic-coder.personalfinance.app.Application/kinetic-coder.personalfinance.app.Application.csproj reference kinetic-coder.personalfinance.app.Domain/kinetic-coder.personalfinance.app.Domain.csproj
dotnet add kinetic-coder.personalfinance.app.Infrastructure/kinetic-coder.personalfinance.app.Infrastructure.csproj reference kinetic-coder.personalfinance.app.Application/kinetic-coder.personalfinance.app.Application.csproj
dotnet add kinetic-coder.personalfinance.app.Tests/kinetic-coder.personalfinance.app.Tests.csproj reference kinetic-coder.personalfinance.app.API/kinetic-coder.personalfinance.app.API.csproj
dotnet add kinetic-coder.personalfinance.app.Tests/kinetic-coder.personalfinance.app.Tests.csproj reference kinetic-coder.personalfinance.app.Application/kinetic-coder.personalfinance.app.Application.csproj
dotnet add kinetic-coder.personalfinance.app.Tests/kinetic-coder.personalfinance.app.Tests.csproj reference kinetic-coder.personalfinance.app.Domain/kinetic-coder.personalfinance.app.Domain.csproj
dotnet add kinetic-coder.personalfinance.app.Tests/kinetic-coder.personalfinance.app.Tests.csproj reference kinetic-coder.personalfinance.app.Infrastructure/kinetic-coder.personalfinance.app.Infrastructure.csproj
