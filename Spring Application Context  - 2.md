App2HelloWorldSpring.java
```
package com.rootxsudip.learnspringframework;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class App02HelloWorldSpring {

	public static void main(String[] args) {
		// Launch a Spring Context
		var context = new AnnotationConfigApplicationContext(HelloWorldConfiguration.class);	
		// Configure the things that we want Spring to manage - 
		// HelloWorldConfiguration - @Configuration
		// name - @Bean
		
		// Retrieving Beans managed by Spring	
		System.out.println(context.getBean("name"));
		System.out.println(context.getBean("age"));
		System.out.println(context.getBean("person"));
		System.out.println(context.getBean("location"));
		//System.out.println(context.getBean(Address.class)); //get bean of specific type
		System.out.println(context.getBean("person2MethodCall"));
		System.out.println(context.getBean("person3Parameters"));
		
	}

}
```
HelloWorldConfiguration.java
```
package com.rootxsudip.learnspringframework;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// Eliminate verbosity in creating Java Beans
// Public accessor methods, constructor,
// equals, hashcode and toString are automatically created.
// Released in JDK 16

record Person(String name,int age, Address address) { };
record Address(String country,String state) { };

@Configuration
public class HelloWorldConfiguration {
	
	@Bean
	public String name() {
		return "rootxsudip";
	}
	
	@Bean
	public int age() {
		return 21;
	}
	
	@Bean(name="location")
	public Address address() {
		return new Address("USA","Ohio");	
		
	}
	
	@Bean(name="location2")
	public Address address2() {
		return new Address("test","test");	
		
	}
	
	@Bean
	public Person person() {
		return new Person("Sudip",21,new Address("USA","Ohio"));
	}
	
	@Bean
	public Person person2MethodCall() {
		return new Person(name(),age(),address()); //Use beans values in another bean
	}
	
	@Bean
	public Person person3Parameters(String name,int age, Address location2) {
		return new Person(name,age,location2); 
	}
	
}
```
