package mypack;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

@WebService()
public class factorial 
{
    int fact=1;
    @WebMethod(operationName = "factor")
    public String factor(@WebParam(name = "a") int a) 
    {
          for (int y=1; y<=a; y++)
          {
            fact = fact*y;
  }
  return "factorial of "+ a +"  is "+fact;
    }
}

