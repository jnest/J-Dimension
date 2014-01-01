using System;
using J_Dimension.App_Code;

namespace J_Dimension
{
    public partial class MechCreator : System.Web.UI.Page
    {
        public MechGameEntities entities = new MechGameEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void OnClickSubmit(object sender, EventArgs e)
        {
            new LinqDataAccess().addMechtoMechTemplateTable(txtName.Text, ddlWeight.Text, ddlFaction.Text);  //Add the new Mech to the MechTemplate table.       
            
            lblMessage.Text = "The update was sent.";
            
            txtName.Text = String.Empty;                       
            gvMechs.DataBind();               
        }        
    }
}