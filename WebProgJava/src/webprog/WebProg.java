package webprog;
import java.io.BufferedReader;
import java.io.IOException;
//import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
/**
 *
 * @author peterking
 */
public class WebProg {
    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
   
    
    //entry point 
    public static void main(String[] args) throws IOException {
   
        
 boolean accurate;
 int result=0;
 String programType;
 
InputStreamReader inputStreamReader = new InputStreamReader(System.in);
BufferedReader reader = new BufferedReader(inputStreamReader);

do{
accurate = true;
System.out.println("Please type in 'mod', 'factorial', or 'smallest/largest'");
String response = reader.readLine();

switch (response){
    case "mod":
        programType = response;
       result = mod(reader);
       System.out.println(programType + " result is: " + result);
        break;
        
    case "factorial":
        programType = response;
       result = factorial(reader);
       System.out.println(programType + " result is: " + result);
        break;
        
    case "smallest/largest":
        programType = response;
        smallestLargest(reader, programType);
        break;
    
    default:
        accurate = false; 
        System.out.println(System.lineSeparator());
       System.out.println("Please check spelling && try again");
        System.out.println(System.lineSeparator());
}
}while(accurate==false);
    }
    
    
    //mod
    public static int mod(BufferedReader reader) throws IOException{
    
        System.out.println("Please type in an integer");
        String response = reader.readLine();
        int num = Integer.parseInt(response);
        
        int res = num % 2 == 0 ? 0 : 1;
       // result = res;
        
       // int number = reader.readLine();
        return res;
        
    }

    
    //factorial
    //works with Julie's code see func FactorialSearch
    public static int factorial(BufferedReader reader) throws IOException{
       
         int res = 0;
         System.out.println("Please type in an integer > 0");
         String response = reader.readLine();
        int num = Integer.parseInt(response);
        
       return FactorialSearch(num);
        
    }
  
    //still dont get how this works at its core >>>>>>>>> recoursive algorithm 
   public static int FactorialSearch(int a)
   {
       if (a<=1)
       {
       
       return 1;
  
       }
       else
       {
           return a * FactorialSearch(a-1);
       }
   }
   
   
    //finding smallest/largest 
    //error with array > need to do it without defining the size dynamically
    public static void smallestLargest(BufferedReader reader, String programType) throws IOException{
         
         int res = 0, count=-1, temp=0;
         boolean done = false;
         ArrayList<Integer> num = new ArrayList<Integer>();
         
         do{
         count ++;
         System.out.println("Please type in an integer > 0 or type 'done'");
         String response = reader.readLine();
         if("done".equals(response)){
             done = true;
         }else{
         temp = Integer.parseInt(response);
         num.add(temp);
         }
         }while(done == false);
         
                 
            int smallest = num.get(0);
            int largetst = num.get(0);
                 
         for(int i=1; i< num.size(); i++)
		{
			if(num.get(i) > largetst)
				largetst = num.get(i);
			else if (num.get(i) < smallest)
				smallest = num.get(i);	
		}
        
       System.out.println(programType + " largest is: " + largetst + " Smallest is:" + smallest);
        

    }
    
        
}
