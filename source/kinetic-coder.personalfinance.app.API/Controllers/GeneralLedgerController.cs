using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace KineticCoder.PersonalFinance.App.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class GeneralLedgerController : ControllerBase
    {
        [HttpGet("{tenantId:guid}")]
        public async Task<IActionResult> Get(Guid tenantId)
        {
            // Your logic to handle the request goes here.
            // For example, you might fetch data from a database based on the tenantId.

            // Placeholder response
            return Ok(new { TenantId = tenantId, Message = "Data fetched successfully" });
        }
    }
}