using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Text.Json.Serialization;
using WebAppMVCLesson1.Models;

namespace WebAppMVCLesson1.Controllers
{
    public class RoomController : Controller
    {
        private EFContext db;
        public RoomController(EFContext db)
        {
           this.db = db;
        }

        //public async IActionResult Index()
        //{
        //    //List<Room> rooms = db.Rooms.Include(c=>c.Category).ToList();
        //    using(HttpClient client = new HttpClient())
        //    {
        //        using(var request = client.GetAsync("http://localhost:5236/api/Room"))
        //        {
        //            var result = await request.Result.Content.ReadAsStringAsync();
        //            var rooms = JsonConvert.DeserializeObject<List<Room>>(result);
        //        }
        //    }

        //    return View();
        //}

        public IActionResult RoomList()
        {
            return View();
        }

        public async Task<IActionResult> RoomDetails(int id)
        {
            Room rooms = new Room();
            using(HttpClient client = new HttpClient())
            {
                using(var request = client.GetAsync("http://localhost:5236/api/Room/GetRoomById?id=" + id))
                {
                    var result = await request.Result.Content.ReadAsStringAsync();
                    
                    if(request.IsFaulted) {
                        rooms = JsonConvert.DeserializeObject<Room>(result);
                    }
                    else if(request.Result.StatusCode == System.Net.HttpStatusCode.NotFound)
                    {
                        ViewBag.Message = "Информация по данной комнате не найдена";
                    }
                    else
                    {
                        ViewBag.Message = "При получении данных возникла ошибка" + result;
                    }
                }
            }
            return View();
        }
    }
}
