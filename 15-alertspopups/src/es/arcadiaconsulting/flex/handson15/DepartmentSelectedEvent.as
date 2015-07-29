package es.arcadiaconsulting.flex.handson15
{
	import flash.events.Event;

	
	public class DepartmentSelectedEvent extends Event
	{
		
		protected var _department:String;
		
		public function DepartmentSelectedEvent(department:String)
		{
			super("departmentSelectedEvent");
			this._department=department;
		}
		
		public function get department():String {
			return this._department;
		}
		
	}
}