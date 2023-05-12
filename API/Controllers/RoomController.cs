using API.Data;
using API.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Data.Common;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RoomController : ControllerBase
    {
        private readonly ApplicationDbContext dbContext;
        public RoomController(ApplicationDbContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            return (IActionResult)await dbContext.Rooms.ToListAsync();
        }

        [HttpGet("GetRoomById")]
        public async Task<IActionResult> Get(int id)
        {
            try
            {
                var room = await dbContext.Rooms.FindAsync(id);
                if(room != null)
                {
                    return Ok(room);
                }
                else { return NotFound(); }
            }
            catch(Exception ex) { return BadRequest(ex.Message); }
        }

        [HttpPost]
        public async Task<IActionResult> Post([FromForm] Room room)
        {
            try
            {
                dbContext.Rooms.Add(room);
                dbContext.SaveChanges();
                return Ok(room);
            }
            catch (Exception ex) { return BadRequest(ex.Message); }
        }

        [HttpPut]
        public async Task<IActionResult> Put([FromForm] Room room)
        {
            var findRoom = dbContext.Rooms.Find(room.RoomId);

            if (findRoom == null)
            {
                return BadRequest("Room is empty");
            }
            else
            {
                try
                {
                    findRoom.RoomNumber = room.RoomNumber;
                    findRoom.Price = room.Price;
                    findRoom.CreateDate = room.CreateDate;
                    findRoom.CreateUser = room.CreateUser;
                    findRoom.RoomNumber = room.RoomNumber;
                    dbContext.SaveChanges();
                    return Ok();
                }
                catch (Exception ex)
                {
                    return BadRequest(ex.Message);
                }
            }
        }

        [HttpDelete]
        public async Task<IActionResult> Delete(int roomId)
        {
            try
            {
                Room findRoom = dbContext.Rooms.Find(roomId);
                dbContext.Rooms.Remove(findRoom);
                dbContext.SaveChanges();
                return Ok();
            }
            catch (Exception ex) { return BadRequest(ex.Message); }
        }


    }
}
