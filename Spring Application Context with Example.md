HelloWorldSpring.java
```
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
	}

}
```

HelloWorldConfiguration.java
```

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class HelloWorldConfiguration {
	
	@Bean
	public String name() {
		return "rootxsudip";
	}
	
}

```

- Package Declaration:
  - Defines the package for the Java classes: `com.rootxsudip.learnspringframework`.

- Imports:
  - Import for `@Bean` annotation from Spring Framework.
  - Import for `@Configuration` annotation from Spring Framework.

- Configuration Class:
  - Annotated with `@Configuration`, indicating it provides bean definitions.
  - `HelloWorldConfiguration` class responsible for defining beans in the Spring context.

- Bean Definition Method:
  - Annotated with `@Bean`, designating it as a provider of a bean.
  - `public String name() { return "rootxsudip"; }`: Defines a bean named `"name"` of type `String` with the value `"rootxsudip"`.
