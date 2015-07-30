package es.arcadiaconsulting.flex.handson20.server;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

@Path("/math")
public class MathService {

	@GET
	@Path("/sum")
	public int test(@QueryParam("a") int a, @QueryParam("b") int b) {
		return a + b;
	}

}
