using ModelEntity;
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
   
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            List<User> userList = new List<User>();
            var list = new BindingList<User>(userList);
            DataGrid1.DataSource = list;
           
            DataGrid1.DataBind();
        }
    
    }
}