package es.arcadiaconsulting.flex.handson19.server;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService(serviceName = "MathService", targetNamespace = "http://www.arcacdiaconsulting.es/flex/handson19/server")
public class MathService {

	@WebMethod
	public int sum(@WebParam(name = "a") int a, @WebParam(name = "b") int b) {
		return a + b;
	}

}
