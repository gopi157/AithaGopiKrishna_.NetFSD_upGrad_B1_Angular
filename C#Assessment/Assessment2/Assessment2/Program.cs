using System.Diagnostics.Tracing;

namespace Assessment2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            displayMessage();
            
            greetUser();
           
            displayRangeBetweenNumbers();
            
            EvenOrOdd();
           
            countEvenAndOddNumbers();

            productSold();

            squareOfNumbers();

            factorial();

            fibonacii();

            multiplication();

            numbersDivBy7();

            largetstNumber();

            smallestNumber();

            displayMarksDetails();

            checkWords();

            reverseWord();

            displayWordLength();

            checkPalindrome();
        }
        static void displayMessage()
        {
            Console.WriteLine("Welcome to the world of C#");
        }

        static void greetUser()
        {
            Console.WriteLine("Enter User Name:");
          string userName= Console.ReadLine();
            Console.WriteLine("Hi!"+" "+userName+" "+" Welcome to the world of C#");
            
        }

        static void displayRangeBetweenNumbers()
        {
            Console.WriteLine("Enter Two numbers to display range between them:");
            int num1=int.Parse(Console.ReadLine());
            int num2=int.Parse(Console.ReadLine());

            Console.WriteLine(" Range between " + num1 +" and "+ num2+" : ");

            for(int i = num1+1; i <num2; i++)
            {
                Console.WriteLine(i);
            }
        }

        static void EvenOrOdd()
        {
            Console.WriteLine("Enter Number to Check Even Or Odd");

            int num=int.Parse(Console.ReadLine());

            Console.WriteLine("Given Number:" + num);

            if((num & 1) == 0)
            {
                Console.WriteLine("Even Number");
            }
            else
            {
                Console.WriteLine("Odd Number");
            }
        }

        static void countEvenAndOddNumbers()
        {
            Console.WriteLine("Enter Number of inputs you want to Enter:");
           
            int num = int.Parse(Console.ReadLine());

            int evenCount = 0;
            int oddCount = 0;

            Console.WriteLine("-----Now Enter Values--------");

            for(int i = 1; i <= num; i++)
            {
                int input=int.Parse(Console.ReadLine());

                if((input & 1) == 0)
                {
                    evenCount+=1;
                }
                else
                {
                    oddCount+=1;
                }
            }
            Console.WriteLine("EvenCount:" + evenCount + " " + " Odd Count:" + oddCount);
        }

        static void displayTemperatureInCelsius()
        {
            Console.Write("Enter temperature in Fahrenheit: ");
            double fahrenheit = Convert.ToDouble(Console.ReadLine());

            double celsius = (fahrenheit - 32) * 5 / 9;

            Console.WriteLine("Temperature in Celsius: " + celsius);
        }

        static void productSold()
        {
            //Console.WriteLine("ProductNumber" + " " + "QuantitySold" + " TotalPrice");

            double totalPrice = 0;

            for (int i = 1; i <= 3; i++)
            {
                Console.Write("Enter Product Number (1-3): ");
                int productNumber = int.Parse(Console.ReadLine());

                //if(productNumber!=1 || productNumber!=2|| productNumber != 3)
                //{
                //    Console.WriteLine("Invalid Product Number");
                //break;

                //}

                Console.Write("Enter Quantity Sold: ");
                int quantity = int.Parse(Console.ReadLine());

                double price = 0;


                if (productNumber == 1)
                {
                    price = 22.5;
                   
                }

                else if(productNumber==2)
                {
                    price = 44.5;
                }

                else if (productNumber == 3)
                {
                    price = 9.98;
                }
                else
                {
                    Console.WriteLine("Invalid Product Number");
                    continue;

                }

                   totalPrice += price * quantity;
            }

            Console.WriteLine("Total Retail Value of All Products Sold: " + totalPrice);
        }

        static void squareOfNumbers()
        {
            int i = 0;
            int square = 0;
            
            while (square< 625)
            {
                square = i * i;
                
                Console.WriteLine(square);
                
                i++;
            }
        }

        static void factorial()
        {
            int fact = 1;

            int number = 5;

            for(int i=number; i>=1; i--)
            {
              fact=i*fact;
            }
            Console.WriteLine("factorial of " + number + " is " + fact);

        }

        static void fibonacii()
        {
            int a = 0;
            int b = 1;
            int c = 0;

            Console.WriteLine( a);
            Console.WriteLine( b);
            
            while ((a+b) < 40)
            {
                c = a + b;

                Console.WriteLine(c);

                a = b;
                b = c;

            }
        }

        static void multiplication()
        {
            int num = 10;

            for(int i = 1; i <= 20; i++)
            {
                Console.WriteLine(num + " * " + i + " = " + (num * i));
            }
        }

        static void numbersDivBy7()
        {
            for(int i = 200; i <= 300; i++)
            {
                if (i % 7 == 0)
                {
                    Console.WriteLine(i);
                }
            }
        }

        static void largetstNumber()
        {
            Console.WriteLine("Enter 3 Numbers:");
            int num1 = int.Parse(Console.ReadLine());
            int num2 = int.Parse(Console.ReadLine());
            int num3 = int.Parse(Console.ReadLine());

            if (num1 > num2 && num1 > num3)
            {
                Console.WriteLine(num1 + "is Largest Number");
            }

            if (num2 > num3)
            {
                Console.WriteLine(num2 + "is Largest Number");
            }

            else
            {
                Console.WriteLine(num3 + " is Largest Number");
            }


        }

        static void smallestNumber()
        {
            int smallest = int.MaxValue;

            for (int i = 1; i <= 5; i++)
            {
                Console.Write("Enter number " + i + ": ");
                int num = Convert.ToInt32(Console.ReadLine());

                if (num < smallest)
                {
                    smallest = num;
                }
            }

            Console.WriteLine("Smallest number is: " + smallest);
        }

        static void displayMarksDetails()
        {
            int[] marks = new int[10];

            int total = 0;
            int min = int.MaxValue;
            int max = int.MinValue;

            Console.WriteLine("Enter 10 Marks:");

            for (int i = 0; i < 10; i++)
            {
                Console.Write("Mark " + (i + 1) + ": ");
                marks[i] = Convert.ToInt32(Console.ReadLine());

                total += marks[i];

                if (marks[i] < min)
                {
                    min = marks[i];
                }

                if (marks[i] > max)
                {
                    max = marks[i];
                }
            }

            double average = total / 10.0;

            Console.WriteLine("\nTotal Marks: " + total);
            Console.WriteLine("Average Marks: " + average);
            Console.WriteLine("Minimum Marks: " + min);
            Console.WriteLine("Maximum Marks: " + max);

            // Ascending Order
            Array.Sort(marks);
            Console.WriteLine("\nMarks in Ascending Order:");
            foreach (int m in marks)
            {
                Console.Write(m + " ");
            }

            // Descending Order
            Array.Reverse(marks);
            Console.WriteLine("\n\nMarks in Descending Order:");
            foreach (int m in marks)
            {
                Console.Write(m + " ");
            }
        }

        static void displayWordLength()
        {
            Console.Write("Enter a word: ");
            string word = Console.ReadLine();

            int length = word.Length;

            Console.WriteLine("Length of the word is: " + length);
        }

        static void reverseWord()
        {
            Console.Write("Enter a word: ");
            string word = Console.ReadLine();

            string reverse = "";

            for (int i = word.Length - 1; i >= 0; i--)
            {
                reverse += word[i];
            }

            Console.WriteLine("Reversed word: " + reverse);
        }

        static void checkWords()
        {
            Console.Write("Enter first word: ");
            string word1 = Console.ReadLine();

            Console.Write("Enter second word: ");
            string word2 = Console.ReadLine();

            if (word1.Equals(word2))
            {
                Console.WriteLine("Both words are the same.");
            }
            else
            {
                Console.WriteLine("Both words are different.");
            }
        }

        static void checkPalindrome()
        {
            Console.Write("Enter a word: ");
            string word = Console.ReadLine();

            string reverse = "";

            for (int i = word.Length - 1; i >= 0; i--)
            {
                reverse += word[i];
            }

            if (word == reverse)
            {
                Console.WriteLine("The word is a Palindrome.");
            }
            else
            {
                Console.WriteLine("The word is not a Palindrome.");
            }
        }

    }
}
