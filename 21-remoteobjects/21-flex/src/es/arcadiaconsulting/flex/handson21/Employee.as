package es.arcadiaconsulting.flex.handson21
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="es.arcadiaconsulting.flex.handson21.server.model.Employee")]
	public class Employee
	{
		
		public var id:Number;
		
		public var name:String;
		
		public var phone:String;
		
		public var email:String;
		
		public var roles:ArrayCollection;
		
		public function Employee(){
		}
		
		public function clone():Employee {
			var clone:Employee = new Employee();
			clone.id = this.id;
			clone.name = this.name;
			clone.phone = this.phone;
			clone.email = this.email;
			clone.roles = new ArrayCollection();
			for each(var rol:String in this.roles) {
				clone.roles.addItem(rol);
			}
			return clone;
		} 

	}
}