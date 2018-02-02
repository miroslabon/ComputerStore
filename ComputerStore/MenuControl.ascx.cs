using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComputerStore
{
    public partial class MenuControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dlMenu.DataSource = DataAccess.selectQuery("SELECT * FROM Categories");
                dlMenu.DataBind();
            }
        }

        protected void dlMenu_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}