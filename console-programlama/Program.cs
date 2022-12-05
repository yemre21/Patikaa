internal class Program
{
    private static void Main(string[] args)
    {
       /* Console.WriteLine("Hello, World!");
        Console.WriteLine("name :");
        String name = Console.ReadLine();
        Console.WriteLine("surname :");
        string surname = Console.ReadLine();

        Console.WriteLine("hi " +name+ " " + surname);
           int degisken = 5;
        string degisken = "merhaba";
            Console.WriteLine(degisken);*/

                    int []arr = new int[5];
        for(int i=0;i<5;i++){
            Console.Write("eleman giriniz: ");
            arr[i]= int.Parse(Console.ReadLine());
            
        }
        foreach(int item in arr){
            Console.WriteLine("{0}. eleman baş",item);
            Console.WriteLine(item+". eleman baş",item);
        }
    }
}