package es.arcadiaconsulting.flex.handson21.server;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.Predicate;
import org.apache.commons.lang3.StringUtils;

import es.arcadiaconsulting.flex.handson21.server.model.Employee;

public class EmployeeService {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = LoggerFactory.getLogger(EmployeeService.class);
	
	
	
	protected static Set<Employee> data =  new HashSet<Employee>();
	
	protected static long MAX_ID = 1L;
	
	static {
		data.add(new Employee(MAX_ID, "Gonzalo Gomez Garcia", "666777888", "gonzalo@arcidaconsulting.es",
				Arrays.asList("IT", "Sales", "CEO")));
	}
	
	
	public Collection<Employee> getEmployees() {
		return new ArrayList<Employee>(data);
	}
	
	public Collection<Employee> findEmployees(final String filter){
		
		if (logger.isInfoEnabled()) {
			logger.info("findEmployees(String) - data={}, filter={}", data, filter); //$NON-NLS-1$
		}
		
		
		Collection<Employee> result = CollectionUtils.select(data, new Predicate<Employee>() {
			@Override
			public boolean evaluate(Employee employee) {
				if(StringUtils.isNotBlank(filter)) {
					return employee.getName().toLowerCase().contains(filter.toLowerCase()) ||
							employee.getPhone().toLowerCase().contains(filter.toLowerCase()) ||
							employee.getEmail().toLowerCase().contains(filter.toLowerCase());
				} else {
					return true;
				}
			}
		});
		
		if (logger.isInfoEnabled()) {
			logger.info("findEmployees(String) - result={}", result); //$NON-NLS-1$
		}
		
		return result;
		
	}
	
	public void addEmployee(Employee employee) {
		
		if (logger.isInfoEnabled()) {
			logger.info("addEmployee(Employee) - data={}, employee={}", data, employee); //$NON-NLS-1$
		}
		
		if(employee != null) {
			synchronized (data) {
				employee.setId(++MAX_ID);
				data.add(employee);
			}
		}
		
		if (logger.isInfoEnabled()) {
			logger.info("addEmployee(Employee) - data={}", data); //$NON-NLS-1$
		}
				
	}
	
	public void updateEmployee(Employee employee) {
		
		if (logger.isInfoEnabled()) {
			logger.info("updateEmployee(Employee) - data={}, employee={}", data, employee); //$NON-NLS-1$
		}
		
		if(employee != null)
			synchronized (data) {
				data.remove(employee);
				data.add(employee);
		}
		
		if (logger.isInfoEnabled()) {
			logger.info("updateEmployee(Employee) - data={}", data); //$NON-NLS-1$
		}
	}	
	
	
	public void removeEmployees(List<Employee> employees) {
		
		if (logger.isInfoEnabled()) {
			logger.info("removeEmployee(Employee) - data={}, employees={}", data, employees); //$NON-NLS-1$
		}
			
		if(CollectionUtils.isNotEmpty(employees)){
			synchronized (data) {
				data.removeAll(employees);
			}
		}
		
		if (logger.isInfoEnabled()) {
			logger.info("removeEmployee(Employee) - data={}", data); //$NON-NLS-1$
		}
	}

}
