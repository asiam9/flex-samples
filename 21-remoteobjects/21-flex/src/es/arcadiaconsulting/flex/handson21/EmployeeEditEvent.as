package es.arcadiaconsulting.flex.handson21
{
	import flash.events.Event;

	public class EmployeeEditEvent extends Event
	{
		
		protected var _employee:Employee;
		
		public function EmployeeEditEvent(employee:Employee)
		{
			super("employeeEditEvent");
			this._employee = employee;
		}
		
		public function get employee():Employee {
			return this._employee;
		}
		
	}
}