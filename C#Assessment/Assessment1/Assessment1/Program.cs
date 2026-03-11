using System.ComponentModel.Design;

namespace Assessment1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            divide();
            distanceInmetres();
            sumAndAvg();
            EvenORODD();
            HighestNumber();
            AreaOfSquareAndRectangle();
            calculateTime();
            vowelOrConsonent();


        }

        static void divide()
        {
            int num1 = 50;
            int num2 = 2;
            Console.WriteLine("Num1:"+num1+" "+"Num2:"+num2);
            double divide = (num1 / num2);
            Console.WriteLine("Divide:"+divide);
        }

        static void distanceInmetres()
        {
            int distanceInKilometres = 100;
            Console.WriteLine("Given Distance in km:" + distanceInKilometres);
            int distanceInMetres = distanceInKilometres * 1000;
            Console.WriteLine("Calculating Distance in Metres:");
            Console.WriteLine(distanceInMetres+" "+"metres");
        }

        static void sumAndAvg()
        {
            int[] nums = { 2, 4, 6, 8, 10 };
            int sum = 0;

            foreach (int num in nums)
            {
                sum += num;
            }
            Console.WriteLine("Sum:"+sum);
            int avg = (sum / nums.Length);
            Console.WriteLine("Average:"+avg);

        }

        static void EvenORODD()
        {
            int num = 13;

            Console.WriteLine("Given Number:" + num);

            if ((num & 1) == 0)
            {
                Console.WriteLine("EVEN Number");
            }


            else
            {
                Console.WriteLine("ODD Number");
            }

        }
        static void HighestNumber()
        {
            Console.WriteLine("Enter Values of Num1 and Num2 to find Highest Number:");

            int num1 = int.Parse(Console.ReadLine());
            int num2 = int.Parse(Console.ReadLine());
            Console.WriteLine(num1);
            Console.WriteLine(num2);
            if (num1 == num2)
            {
                Console.WriteLine("Two numbers are equal");
            }
            else if (num1 > num2)
            {
                Console.WriteLine($"{num1} is greater");
            }
            else
            {
                Console.WriteLine($"{num2} is greater");
            }

        }
        static void AreaOfSquareAndRectangle()
        {
            int side = 5;

            Console.WriteLine("Given Side of a Square:" + side);

            Console.WriteLine("Area of Square:" + (side * side));

            int length = 15;
            int breadth = 10;

            Console.WriteLine("Given length,breadth:" + length+" "+breadth);
          
            Console.WriteLine("Area of Rectangle:" + (length * breadth));
        }

        static void calculateTime()
        {
            int speed = 60;
            int distance = 100;
            Console.WriteLine("Given Speed:" + speed + " " + " Distance:" + distance);

            double timeInHours =  (double) distance/speed;
            Console.WriteLine("Time taken to reach the destination is:" + timeInHours+"hours");
        }

        static void vowelOrConsonent()
        {
            string str = "Hello";

            Console.WriteLine($"Given String:{str}");

            char ch = str[3];

            Console.WriteLine(ch);

            if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
            {
                Console.WriteLine("Character is Vowel");
            }
            else
            {
                Console.WriteLine("Character is Consonent");
            }

    }
            
    }
}
