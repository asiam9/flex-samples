package es.arcadiaconsulting.flex.handson21
{
	[Bindable]
	[RemoteClass(alias="es.arcadiaconsulting.flex.handson21.server.model.Employee")]
	public class Employee
	{
		
		public var id:Number;
		
		public var name:String;
		
		public var phone:String;
		
		public var email:String;
		
		public function Employee()
		{
		}
		

	}
}