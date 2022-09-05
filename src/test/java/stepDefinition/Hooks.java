package stepDefinition;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks {
	
	@Before("@MobileTest")
	public void beforevalidation() {
		System.out.println("Before Mobile hook");
	}
	@After("@MobileTest")
	public void Aftervalidation() {
		System.out.println("After Mobile hook");
	}
		
	@Before("@WebTest")
	public void beforeWebvalidation() {
		System.out.println("Before Web hook");
	}
	@After("@WebTest")
	public void AfterWebvalidation() {
		System.out.println("After Web hook");
	}
}
