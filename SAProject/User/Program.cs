using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAProject.User
{
    using System;
    namespace shapes
    {
        public interface Shapes
        {
            void Draw();
        }

        /// <summary>
        /// A 'ConcreteProduct' class
        /// </summary>
        public class Triangle : Shapes
        {

            public void Draw()
            {
                {
                    int number, i, j, count = 1;
                    Console.Write("Enter number of rows:");
                    number = int.Parse(Console.ReadLine());
                    count = number - 1;
                    for (j = 1; j <= number; j++)
                    {
                        #region Printing Space  
                        for (i = 1; i <= count; i++)
                            Console.Write(" ");
                        count--;
                        #endregion
                        for (i = 1; i <= 2 * j - 1; i++)
                            Console.Write("*");
                        Console.WriteLine();
                    }
                    Console.ReadLine();
                }
            }
        }
        public class Rectangle : Shapes
        {
            
            public void Draw()
            {
                int number1, number2, i, j;
                Console.Write("Enter Length of the width:");
                number1 = int.Parse(Console.ReadLine());
                Console.Write("Enter Length of the breadth:");
                number2 = int.Parse(Console.ReadLine());
                for (j = 0; j <= number2 - 1; j++)
                {
                    for (i = 0; i <= number1 - 1; i++)
                    {
                        Console.Write("* ");
                    }
                    Console.WriteLine();
                }

            }
        }
        public class Square : Shapes
        {
          
            public void Draw()
            {
                {
                    int number, i, j;
                    Console.Write("Enter Length of side:");
                    number = int.Parse(Console.ReadLine());

                    for (j = 0; j <= number; j++)
                    {
                        for (i = 0; i <= number - 1; i++)
                        {
                            Console.Write("* ");
                        }
                        Console.WriteLine();
                    }

                }
            }
        }
        /// <summary>
        /// A 'ConcreteProduct' class
        /// </summary>
        public class Circle : Shapes
        {
            public void Draw()
            {

                double radius;
                double thickness = 0.4;
                ConsoleColor BorderColor = ConsoleColor.Black;
                Console.ForegroundColor = BorderColor;
                char symbol = '.';

                do
                {
                    Console.Write("Enter radius:::: ");
                    if (!double.TryParse(Console.ReadLine(), out radius) || radius <= 0)
                    {
                        Console.WriteLine("radius have to be positive number");
                    }
                }
                while (radius <= 0);

                Console.WriteLine();
                double rIn = radius - thickness, rOut = radius + thickness;

                for (double y = radius; y >= -radius; --y)
                {
                    for (double x = -radius; x < rOut; x += 0.5)
                    {
                        double value = x * x + y * y;
                        if (value >= rIn * rIn && value <= rOut * rOut)
                        {
                            Console.Write(symbol);
                        }
                        else
                        {
                            Console.Write(" ");
                        }
                    }
                    Console.WriteLine();
                }
                Console.ReadKey();
            }
        }

        /// <summary>
        /// The Creator Abstract Class
        /// </summary>
        public abstract class ShapeFactory
        {
            public abstract Shapes GetShapes(string Shape);

        }

        /// <summary>
        /// A 'ConcreteCreator' class
        /// </summary>
        public class ConcreteShapeFactory : ShapeFactory
        {
            public override Shapes GetShapes(string Shape)
            {

                switch (Shape)
                {
                    case "req":
                        return new Rectangle();
                    case "sqr":
                        return new Square();
                    case "tri":
                        return new Triangle();
                    case "circ":
                        return new Circle();
                    default:
                        throw new ApplicationException(string.Format("Shapes '{0}' cannot be created", Shape));
                }
            }

        }

        /// <summary>
        /// Factory Pattern Demo
        /// </summary>
        class Program
        {
            static void Main(string[] args)
            {
                ShapeFactory factory = new ConcreteShapeFactory();

                Console.WriteLine("Enter Shape:");
                String shape = Console.ReadLine();

                Shapes u = factory.GetShapes(shape);
                u.Draw();


                Console.ReadKey();

            }
        }
    }
}