
In Spring Framework, @Qualifier and @Primary are annotations used to resolve ambiguities when multiple beans of the same type are defined within the application context. They help Spring determine which bean should be injected when there are multiple candidates.

1. @Qualifier:  
@Qualifier is used to specify which bean should be injected when multiple beans of the same type are available.  
It allows you to narrow down the selection by providing a qualifier value that matches the name of the desired bean.  
You typically place @Qualifier alongside @Autowired or @Resource annotations in your code.  
Example:
```
@Component
public class ExampleService {
    private final ExampleRepository exampleRepository;

    @Autowired
    public ExampleService(@Qualifier("exampleRepositoryImpl") ExampleRepository exampleRepository) {
        this.exampleRepository = exampleRepository;
    }
}
```

2. @Primary:  
@Primary is used to indicate a primary bean when multiple beans of the same type are available.  
When Spring encounters multiple beans of the same type and one of them is marked as @Primary, the primary bean will be injected by default.  
If @Qualifier is not used explicitly, the primary bean will be selected.  

Example:
```
@Component
@Primary
public class PrimaryExampleRepository implements ExampleRepository {
    // Implementation
}
```
In this example, if there are multiple implementations of ExampleRepository and no @Qualifier is specified, the PrimaryExampleRepository will be injected by default because it is marked with @Primary.

Changes made to code:
HelloWorldConfiguration.java
```
package com.rootxsudip.learnspringframework;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Configuration;
import org.springframework.beans.factory.annotation.Qualifier;

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
	@Primary //Make this address primary
	public Address address() {
		return new Address("USA","Ohio");	
		
	}
	
	@Bean(name="location2")
	@Qualifier("location2qualifier")
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
	
	@Bean
	@Primary
	public Person person4Parameters(String name,int age, Address address) {
		return new Person(name,age,address); 
	}
	
	@Bean
	public Person person5Qualifier(String name,int age, @Qualifier("location2qualifier") Address address) {
		return new Person(name,age,address); 
	}
	
}
```

App02HelloWorldSpring.java
```
package com.rootxsudip.learnspringframework;

import java.util.Arrays;

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
		System.out.println(context.getBean("person2MethodCall"));
		System.out.println(context.getBean("person3Parameters"));
		System.out.println(context.getBean("person4Parameters"));
		System.out.println(context.getBean(Address.class)); //get bean of specific type
		System.out.println(context.getBean(Person.class)); //get bean of specific type
		
		//	Spring Beans
		System.out.println("Spring Beans:");
		Arrays.stream(context.getBeanDefinitionNames())
			.forEach(System.out::println);
		
		// Qualifier		
		System.out.println(context.getBean("person5Qualifier"));
	}

}
```
