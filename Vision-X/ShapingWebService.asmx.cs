using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;

namespace Vision_X
{
    /// <summary>
    /// Summary description for ShapingWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ShapingWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public string shaper(string type, int n)
        {
            ConcreteCreator2 concrete = new ConcreteCreator2();
            return concrete.FactoryMethod(type, n);
        }

        [WebMethod]
        public string rectangle(string type, int n, int l)
        {
            ConcreteCreator2 concrete = new ConcreteCreator2();
            return concrete.FactoryMethod(type, n, l);
        }

        [WebMethod]
        public string triangle(string type, int n, int l, int k)
        {
            ConcreteCreator2 concrete = new ConcreteCreator2();
            return concrete.FactoryMethod(type, n, l, k);
        }
    }

    interface shapes
    {
        String draw();
    }
    class square : shapes
    {
        int n;
        public square(int length)
        {
            n = length;
        }

        public string draw()
        {
            StringBuilder sb = new StringBuilder();
            int area = n * n;
            sb.AppendLine("Side length is "+n.ToString()+"<br>"); 
            sb.AppendLine("Area is "+area.ToString());
            sb.AppendLine("<br>");
            for (int i = 0; i <= n - 1; i++)
            {
                for (int j = 0; j <= n - 1; j++)
                {
                    sb.Append("a&nbsp &nbsp");
                }
                sb.AppendLine("<br>");
            }
            return sb.ToString();
        }
    }

    //circle
    class circle : shapes
    {
        int r;
        public circle(int r1)
        {
            r = r1;
        }
        public string draw()
        {
            StringBuilder sb = new StringBuilder();
            double radius = (double)r;
            double thickness = 0.4;
            ConsoleColor BorderColor = ConsoleColor.Black;
            Console.ForegroundColor = BorderColor;
            sb.AppendLine("Radius is: "+r.ToString());
            double area = Math.PI *Math.Pow(r,2);
            area = Math.Round(area, 2);
            sb.AppendLine("<br>Area is: " + area.ToString()+"<br>");

            while (radius <= 0) ;

            double rIn = radius - thickness, rOut = radius + thickness;

            for (double y = radius; y >= -radius; --y)
            {
                for (double x = -radius; x < rOut; x += 0.5)
                {
                    double value = x * x + y * y;
                    if (value >= rIn * rIn && value <= rOut * rOut)
                    {
                        sb.Append("a");
                    }
                    else
                    {
                        sb.Append("&nbsp ");
                    }
                }
                sb.AppendLine("</br>");
            }
            return sb.ToString();
        }

    }

    //Rectangle class
    class rectangle : shapes
    {
        int l, b;
        public rectangle(int length, int breadth)
        {
            l = length;
            b = breadth;
        }
        public string draw()
        {
            StringBuilder sb = new StringBuilder();
            int area = l * b;
            sb.AppendLine("Length is: " + l.ToString());
            sb.AppendLine("<br>Breadth is:" + b.ToString());
            sb.AppendLine("<br>Area is " + area.ToString());
            sb.Append("<br><br>");
            for (int i = 0; i <= b - 1; i++)
            {
                for (int j = 0; j <= l - 1; j++)
                {
                    sb.Append("a ");
                }
                sb.AppendLine("<br>");

            }

            return sb.ToString();
        }
    }

    //class triangle
    class triangle : shapes
    {
        int l, b, h;
        public triangle(int length, int breadth, int height)
        {
            l = length;
            b = breadth;
            h = height;
        }
        public string draw()
        {
            StringBuilder sb = new StringBuilder();
            
            int height = l;
            int width = (height * 2) - 1;
            sb.AppendLine("AREA is " + (0.5 * height * width).ToString());
            sb.AppendLine("<br><br>");

            int mid = width / 2; // the middle column of the triangle

            for (int i = 0; i < height; i++)
            {
                // Calculate the number of asterisks to add to the current row
                int asteriskCount = (i * 2) + 1;

                // Calculate the starting position of the asterisks on the current row
                int start = mid - i;

                // Add spaces before the asterisks to center the row
                for (int j = 0; j < start; j++)
                {
                    sb.Append("&nbsp;");
                }

                // Add the asterisks to the current row
                for (int j = 0; j < asteriskCount; j++)
                {
                    sb.Append("a");
                }

                // Add a line break to the end of the row
                sb.AppendLine("<br>");
            }

            return sb.ToString();
        }
    }
    abstract class Creator2
    {
        public abstract string FactoryMethod(string type, int n);

        public abstract string FactoryMethod(string type, int n, int k);

        public abstract string FactoryMethod(string type, int n, int k, int y);
    }

    class ConcreteCreator2 : Creator2
    {
        public override string FactoryMethod(string type, int n)
        {
            switch (type)
            {
                case "A": return new square(n).draw();
                case "B": return new circle(n).draw();

                default: throw new ArgumentException("Invalid Type", "Type");
            }
        }

        public override string FactoryMethod(string type, int n, int k)
        {
            switch (type)
            {

                case "C": return new rectangle(n, k).draw();
                default: throw new ArgumentException("Invalid Type", "Type");
            }
        }
        public override string FactoryMethod(string type, int n, int k, int l)
        {
            switch (type)
            {

                case "D": return new triangle(n, k, l).draw();
                default: throw new ArgumentException("Invalid Type", "Type");
            }
        }
    }
}

