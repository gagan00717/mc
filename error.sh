object HelloWorld
{
    def main(args: Array[String])
    {
        println("The value of w is:");
         
        // Here, the for loop starts from 0
        // and ends at 10
        for( w <- 0 to 15)
        {
            if( w%2==0){
                 println(w); 
            }
        
        }
    }
}            







import scala.util.control.Breaks._
object HelloWorld {
 def main(args: Array[String]) {  
        var IntArray = Array(11,12,13,14,15)
        
        var i:Int=0
        var item:Int=0
        var flag:Int=0
        
        print("Enter item: ");
        item=scala.io.StdIn.readInt();
        
        breakable
        {
            flag = -1
            while(i<IntArray.size)
            {
                if(IntArray(i)==item)
                {
                    flag=i;
                    break;
                }
                i=i+1
            }
        }
        
        if(flag>=0)
            printf("Item found at index: %d\n",flag); 
        else
            printf("Item not found\n"); 
    }
}              











// Scala code for Recursive Binary Search
  
// Creating object
object GFG{
  
// Creating a recursive  Binary Search function
def RecursiveBinarySearch(arr: Array[Int],
                          Element_to_Search: Int)
                         (low: Int = 0,
                          high: Int = arr.length - 1): Int = 
{
      
    // If element not found                               
    if (low > high) 
        return -1
      
    // Getting the middle element
    var middle = low + (high - low) / 2
      
    // If element found
    if (arr(middle) == Element_to_Search)
        return middle
      
    // Searching in the left half
    else if (arr(middle) > Element_to_Search)
        return RecursiveBinarySearch(arr, 
               Element_to_Search)(low, middle - 1)
      
    // Searching in the right half
    else
        return RecursiveBinarySearch(arr, 
               Element_to_Search)(middle + 1, high)
}
  
// Creating main function
def main(args: Array[String]){
      
    // Calling the binary search function and
    // storing its result in index variable
    var index = RecursiveBinarySearch(Array(1, 2, 3, 4, 55, 
                                            65, 75), 4)(0, 6);
      
    // If value not found 
    if(index == -1)
       print("Not Found")
          
    // Else print the index where 
    // the value is found
    else
       print("Element found at Index " + index)
}
}














object HelloWorld {
  def main(args: Array[String]) {
    print("Enter number1: ")
    val num1 = scala.io.StdIn.readInt()

    print("Enter number2: ")
    val num2 = scala.io.StdIn.readInt()

    val large = findLargest(num1, num2)

    println("Largest number is: " + large)
  }

  def findLargest(a: Int, b: Int): Int = {
    if (a > b)
      a
    else
      b
  }
}
