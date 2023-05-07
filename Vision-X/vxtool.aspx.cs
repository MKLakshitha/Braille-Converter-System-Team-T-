using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vision_X
{
    public partial class vxtool : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void sqrClick(object sender, EventArgs e)
        {
            ServiceReference.ShapingWebServiceSoapClient client = new ServiceReference.ShapingWebServiceSoapClient();
            int SqrLength = int.Parse(length.Value);
            shapeDrawSpace.InnerHtml = client.shaper("A", SqrLength);
        }
        protected void circClick(object sender, EventArgs e)
        {

            ServiceReference.ShapingWebServiceSoapClient client = new ServiceReference.ShapingWebServiceSoapClient();
            int circRadius = int.Parse(radius.Value);
            shapeDrawSpace.InnerHtml = client.shaper("B", circRadius);

        }
        protected void recClick(object sender, EventArgs e)
        {

            ServiceReference.ShapingWebServiceSoapClient client = new ServiceReference.ShapingWebServiceSoapClient();
            int length = int.Parse(rectLength.Value);
            int rcbreadth = int.Parse(breadth.Value);
            shapeDrawSpace.InnerHtml = client.rectangle("C", length, rcbreadth);

        }
        protected void triClick(object sender, EventArgs e)
        {
            ServiceReference.ShapingWebServiceSoapClient client = new ServiceReference.ShapingWebServiceSoapClient();
            int side1 = int.Parse(x.Value);
            int side2 = int.Parse(y.Value);
            int side3 = int.Parse(z.Value);
            shapeDrawSpace.InnerHtml = client.triangle("D", side1, side2, side3);

        }
    }
}