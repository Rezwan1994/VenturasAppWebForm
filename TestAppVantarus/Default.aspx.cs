using ModelEntity;
using ModelRepository;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAppVantarus
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataSet ds = new DataSet();
            List<User> userList = new List<User>();
            UserListModel userListSession = (UserListModel)Session["UserList"];

            string SearchText = Request.Form["ctl00$MainContent$SearchText"];
            if (userListSession != null && userListSession.userList != null && userListSession.userList.Count > 0)
            {
                if (!string.IsNullOrEmpty(SearchText) && SearchText != "null")
                {
                    userList = userListSession.userList.Where(User => User.Address.ToLower().Contains(SearchText.ToLower()) || User.Title.ToLower().Contains(SearchText.ToLower())).ToList();
                }
                else
                {
                    userList = userListSession.userList;
                }

            }
            else
            {
                userListSession = new UserListModel();
                userListSession.userList = new List<User>();
                userListSession.userList.Add(new ModelEntity.User
                {
                    SerialId = 1,
                    Title = "Test1",
                    Date = DateTime.Now.ToString("dd-MM-yyyy"),
                    Address = "Nikunja",
                    Remarks = "3434324",
                    Time = "3.30 PM",
                    Type = "Student"
                });
                userListSession.userList.Add(new ModelEntity.User
                {
                    SerialId = 2,
                    Title = "Test2",
                    Date = DateTime.Now.ToString("dd-MM-yyyy"),
                    Address = "KhilKhet",
                    Remarks = "34",
                    Time = "2.30 PM",
                    Type = "Employee"
                });
                userListSession.userList.Add(new ModelEntity.User
                {
                    SerialId = 3,
                    Title = "Test3",
                    Date = DateTime.Now.ToString("dd-MM-yyyy"),
                    Address = "Mirpur",
                    Remarks = "34",
                    Time = "1.30 PM",
                    Type = "Parents"
                });
            }


            Session["UserList"] = userListSession;


            var list = new BindingList<User>(userList);
            DataGrid1.DataSource = list;
            var btn = new ButtonField();

            DataGrid1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string Title = Request.Form["Title"];
            string address = Request.Form["address"];
            string date = Request.Form["date"];
            string time = Request.Form["time"];
            string remarks = Request.Form["remarks"];
            string type = Request.Form["ctl00$MainContent$ColorList"];
            int id = 1;
            UserListModel userListSession = (UserListModel)Session["UserList"];
            if (userListSession != null && userListSession.userList != null && userListSession.userList.Count > 0)
            {
                id = userListSession.userList.Max(x => x.SerialId) + 1;
            }
            else
            {
                userListSession = new UserListModel();
                userListSession.userList = new List<User>();
            }
            userListSession.userList.Add(new ModelEntity.User
            {
                SerialId = id,
                Title = Title,
                Date = date,
                Address = address,
                Remarks = remarks,
                Time = time,
                Type = type
            });
            Session["UserList"] = userListSession;

            var list = new BindingList<User>(userListSession.userList);
            DataGrid1.DataSource = list;

            DataGrid1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            UserRepository userRepo = null;
            UserDBContext Context = UserDBContext.getInstance();

            userRepo = new UserRepository(Context);
            UserListModel userListSession = (UserListModel)Session["UserList"];

            try
            {

                if (userListSession != null && userListSession.userList != null && userListSession.userList.Count > 0)
                {
                    foreach (var item in userListSession.userList)
                    {
                        userRepo.Insert(item);
                    }
                }


            }
            catch (Exception ex)
            {

            }
            Session["UserList"] = null;
            userListSession = (UserListModel)Session["UserList"];
            var list = new BindingList<User>(userListSession.userList);
            DataGrid1.DataSource = list;

            DataGrid1.DataBind();
        }
    }
}