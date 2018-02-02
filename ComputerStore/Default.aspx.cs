using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComputerStore
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string IDCAT = Request.QueryString["IDCAT"];
                if (IDCAT != null)
                {
                    dlCategory.DataSource = DataAccess.selectQuery("SELECT * FROM Products WHERE IDCAT=" + IDCAT);
                    dlCategory.DataBind();
                }
            }
        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dlCategory_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}