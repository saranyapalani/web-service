package mypack;
public class clientside 
{
    public static void main(String[] args) 
    {
        try
        {
        int a = 7;
        String result = factor(a);
        System.out.println(result);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    private static String factor(int a) 
    {
        mypack.FactorialService service = new mypack.FactorialService();
        mypack.Factorial port = service.getFactorialPort();
        return(port.factor(a));
    }
}
