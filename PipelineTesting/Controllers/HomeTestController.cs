using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace PipelineTesting.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HomeTestController : ControllerBase
    {
        [HttpGet]
        public string GetName()
        {
            string name = "Hello Kavinya";
            return name;    
        }
    }
}
